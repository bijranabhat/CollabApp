FactoryBot.define do
  factory :post do
    #created a post factory
    #easy to set up associtaion 
    title 'a' * 20
    content 'a'* 20
    user
    category
  end
end
