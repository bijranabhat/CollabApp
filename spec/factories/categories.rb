require 'factory_bot'

FactoryBot.define do
  #Created a category factory inside the factories directory
  factory :category do
    sequence(:name) { |n| "name#{n}" }
    sequence(:branch) { |n| "branch#{n}" }
  end
end
