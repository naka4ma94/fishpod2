FactoryBot.define do
  factory :post do
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')) }
    lure {'shad'}
    comment {'hello world'}
    size {50}
    area_id {1}
    user
  end
end