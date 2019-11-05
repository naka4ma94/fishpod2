require 'rails_helper'

RSpec.describe Post, type: :model do
  area = FactoryBot.create(:area, name: "hoge")
  post = FactoryBot.create(:post, area_id: 1)
  puts "This posts s user is #{post.user.inspect}"
end
