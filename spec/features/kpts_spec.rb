require 'rails_helper'

feature 'Kpt' do
  let(:user) { create(:user, :with_project) }
  let(:project) { user.projects.first }
  feature 'ふりかえり作成' do
    before { sign_in_as user }
    context '初回の場合' do
      it 'ふりかえりが作成できること', js: true do
        visit projects_path
        click_link 'ふりかえり開始'
        select '2018', from: 'kpt[target_on(1i)]'
        select '4', from: 'kpt[target_on(2i)]'
        select '15', from: 'kpt[target_on(3i)]'
        first('.spec__keep-things-input').set '1日の終わりにdaikptを使う'
        find('.spec__add-keep-things').click
        page.all(".spec__keep-things-input")[1].set 'vimを使う'

        first('.spec__problem-things-input').set '本番データを吹き飛ばした'
        first('.spec__try-things-input').set '本番で作業するときは必ずペアオペする'
        click_link 'T追加'
        page.all(".spec__try-things-input")[1].set '本番作業をする際はworldで@allをつける'
        fill_in '詳細', with: 'クビになるかと思った。ふりかえりして、メンタル立て直したい'
        click_on '登録する'
        expect(current_path).to eq project_kpts_path(project)

        expect(page).to have_selector 'h5', text: '2018年04月15日'
        expect(page).to have_selector '.spec__keep-thing-content', text: '1日の終わりにdaikptを使う'
        expect(page).to have_selector '.spec__problem-thing-content', text: '本番データを吹き飛ばした'
        expect(page).to have_selector '.spec__try-thing-content', text: '本番で作業するときは必ずペアオペする'
        expect(page).to have_selector '.spec__try-thing-content', text: '本番作業をする際はworldで@allをつける'
        expect(page).to have_content 'クビになるかと思った。ふりかえりして、メンタル立て直したい'
      end
    end
    context '2回目以降の場合' do
      let!(:kpt) { create(:kpt, project: project) }
      let(:try_thing) { kpt.try_things.first }
      before do
        sign_in_as user
        visit new_project_kpt_path(project)
      end
      it '前回のふりかえりが表示されること' do
        expect(page).to have_selector 'td', text: '本番で作業するときは@allメンションをつける'
        expect(page).to have_content 'Keepにする'
      end
      it '前回のTryをkeepにできること', js: true do
        click_on 'Keepにする'
        page.driver.browser.switch_to.alert.accept

        # TODO: 内容が追加されたかどうかを確認する必要がある
        expect(page).to have_content 'Keep済み'
      end
    end
  end
end
