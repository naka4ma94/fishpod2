require 'rails_helper'

RSpec.feature "Posts", type: :feature do
  scenario "user creates a new post" do
    user = FactoryBot.create(:user, email: "postfeature@example.com")

    visit root_path
    click_link "Login"
    fill_in "email", with: user.email
    fill_in "password", with: user.password
    click_button "login"

    expect {
      click_link "Newpost"
      attach_file "post[image]", "#{Rails.root}/spec/files/image.jpeg"
      select "竹山ダム", from: "post[area_id]"
      fill_in "Size", with: "1"
      fill_in "Tactics", with: "test"
      click_button "POST"
    }.to change(user.posts, :count).by(1)
  end
end
