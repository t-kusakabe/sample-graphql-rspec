# frozen_string_literal: true

3.times do |i|
  Sample.seed do |s|
    s.id = i + 1
    s.user_id = 1
    s.name = "Sample#{i + 1}"
  end
end
