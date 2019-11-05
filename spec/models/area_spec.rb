require 'rails_helper'

RSpec.describe Area, type: :model do
  area = FactoryBot.create(:area)
  puts "this area used by #{area.post.inspect}"
end
