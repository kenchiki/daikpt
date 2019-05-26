require 'rails_helper'

feature 'Registration' do
  feature 'ユーザー登録' do
    it 'ユーザー登録ができること' do
      visit new_user_registration_path
      fill_in 'Eメール', with: 'sample@example.com'
      fill_in 'パスワード', with: '12345678'
      fill_in 'user[password_confirmation]', with: '12345678'
      click_on 'Sign up'
      expect(page).to have_content 'アカウント登録が完了しました'
    end
  end
end
