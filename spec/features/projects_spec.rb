require 'rails_helper'

feature 'Project' do
  let(:user) { create(:user) }
  feature 'プロジェクト作成' do
    before do
      sign_in_as user
    end
    it 'プロジェクトが作成できること' do
      visit new_project_path
      fill_in '名前', with: 'SonicGarden'
      click_on '登録する'
      expect(page).to have_selector 'h1', text: 'プロジェクト一覧'
      expect(page).to have_selector 'a', text: 'SonicGarden'
    end
  end
end
