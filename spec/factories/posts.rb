require 'factory_bot'

FactoryBot.define do
  factory :post do
    #created a post factory
    #easy to set up associtaion 
    #title 'a' * 20  gives error
    #content 'a' * 20
    user
    category
  end
end
