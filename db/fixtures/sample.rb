3.times do |i|
  Sample.seed do |s|
    s.user_id = 1
    s.name = "Sample${i + 1}"
  end
end
