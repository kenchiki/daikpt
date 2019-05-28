module Features
  module SessionHelpers
    def sign_in_as(user)
      # deviseは複数のmodelでログインできる機能があるのでscope: :userを追加している
      # なくても動く（オプションナル）
      login_as(user, scope: :user)
      visit root_path
    end
  end
end
