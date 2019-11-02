require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with a name, email, and password" do
    user = User.new(
      name: "testuser",
      email: "testuser@example.com",
      password: "testuser",
    )
    expect(user).to be_valid
  end

  it "is invalid without a name" do
    user = User.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to include("を入力してください")
  end

  it "is invalid without an email address" do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include("を入力してください")
  end

  it "is invalid with a duplicate name" do
    user = User.create(
      name: "testuser",
      email: "testuser@example.com",
      password: "testuser",
    )
    user = User.new(
      name: "testuser",
      email: "hoge@example.com",
      password: "testuser"
    )
    user.valid?
    expect(user.errors[:name]).to include("はすでに存在します")
  end

  it "is invalid with a duplicate email address" do
    user = User.create(
      name: "testuser",
      email: "testuser@example.com",
      password: "testuser",
    )
    user = User.new(
      name: "hoge",
      email: "testuser@example.com",
      password: "testuser",
    )
    user.valid?
    expect(user.errors[:email]).to include("はすでに存在します")
  end
end
