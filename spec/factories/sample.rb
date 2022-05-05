# frozen_string_literal: true

FactoryBot.define do
  factory :sample, class: Sample do
    sequence(:user_id)    { |n| n }
    sequence(:name) { |n| "Sample#{n}" }
  end
end
