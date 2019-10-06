names = [
  "竹山ダム",
  "薩摩湖",
  "鰻池",
  "野池",
  "住吉池",
  "大隅湖",
]

names.each do |name|
  Area.create!(
    { name: name }
  )