
require 'factory_bot'

FactoryBot.define do
    factory :user do
        sequence(:name) { |n| "test#{n}" }
        sequence(:email) { |n| "test#{n}@test.com" }
        password {'123456'}
        password_confirmation {'123456'}
    end
    # We defined the values, userobjects will have. Also we used the sequence method.
    # By reading docs, you can see that with every additional User record, n value gets incremented by one.
    # i.e. the first created user‘s name is going to be test0, the second one’s test1, etc.
end
