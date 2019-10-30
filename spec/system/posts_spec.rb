require 'rails_helper'

describe 'Posts管理機能', type: :system do
  describe '一覧表示機能' do
    before do
      user_a = FactoryBot.create(:user, name: 'nakashima', email: 'nakashima@example.com')
      binding.pry
      FactoryBot.create(:post, user: user_a, area_id: 1)
    end

    context 'ユーザーAがログインしている時' do
      before do
        visit new_user_session_path
        fill_in 'email', with: 'nakashima@example.com'
        fill_in 'password', with: 'password'
        click_button 'login'
      end

      it 'ユーザーAが作成した投稿が表示される' do
        expect(page).to have_link ''
      end
    end
  end
end