FactoryBot.define do
  factory :post do
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/image.jpeg')) }
    lure { "test" }
    comment { "test comment" }
    size { 35 }
    area_id { 1 }
    user { post.user }
  end
end