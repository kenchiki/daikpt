require 'rails_helper'

feature 'Session' do
  feature 'ユーザー認証' do
    let!(:user) { create(:user, email: 'sample@example.com', password: '123456') }
    it 'ログインができること' do
      visit new_user_session_path
      fill_in 'Eメール', with: 'sample@example.com'
      fill_in 'パスワード', with: '123456'
      click_on 'Sign in'
      expect(page).to have_content 'ログインしました'
    end
  end
end
