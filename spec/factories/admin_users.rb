# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :admin_user, :class => 'AdminUser' do
    email {Faker::Internet.email}
    password '123'
  end
end
