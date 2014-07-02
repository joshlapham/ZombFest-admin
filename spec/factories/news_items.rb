# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :news_item do
    title "News Item"
    date "14-01-2014"
    content "Blah blah blah"
  end
end
