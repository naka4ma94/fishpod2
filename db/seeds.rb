areas = [
  "竹山ダム",
  "薩摩湖",
  "鰻池",
  "住吉池",
  "大隅湖",
  "野池",
  "その他"
]

areas.each do |area|
  Area.create!(name: area)
end
