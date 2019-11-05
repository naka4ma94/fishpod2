require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it "is valid with a name, email, and password" do
    user = FactoryBot.build(:user)
    user.valid?
    expect(user).to be_valid
  end

  it "is invalid without a name" do
    user = FactoryBot.build(:user, name: nil)
    user.valid?
    expect(user.errors[:name]).to include("を入力してください")
  end

  it "is invalid without an email address" do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("を入力してください")
  end

  it "is invalid with a duplicate name" do
    FactoryBot.create(:user, name: "testuser")
    user = FactoryBot.build(:user, name: "testuser")
    user.valid?
    expect(user.errors[:name]).to include("はすでに存在します")
  end

  it "is invalid with a duplicate email address" do
    FactoryBot.create(:user, email: "testuser@example.com")
    user = FactoryBot.build(:user, email: "testuser@example.com")
    user.valid?
    expect(user.errors[:email]).to include("はすでに存在します")
  end
end
