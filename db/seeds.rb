areas = [
  "竹山ダム",
  "薩摩湖",
  "鰻池",
  "野池",
  "住吉池",
  "大隅湖",
]

areas.each do |area|
  Area.create!(
    { name: area }
  )
end
