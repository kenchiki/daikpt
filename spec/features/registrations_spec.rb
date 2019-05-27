require 'rails_helper'

feature 'Registration' do
  feature 'ユーザー登録' do
    let(:mail) { open_email('sample@example.com') }
    it 'ユーザー登録ができること' do
      visit new_user_registration_path
      fill_in 'Eメール', with: 'sample@example.com'
      fill_in 'パスワード', with: '12345678'
      fill_in 'user[password_confirmation]', with: '12345678'
      click_on 'Sign up'
      expect(mail).to have_body_text(/以下のリンクをクリックし、メールアドレスの確認手続を完了させてください。/)
      click_email_link_matching(/\/users\/confirmation/, mail)
      expect(page).to have_content /アカウントを登録しました。/
    end
  end
end
