# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :video do
    title "MyString"
    author "MyString"
    year "MyString"
    duration "MyString"
    video_url "MyString"
    image_url "MyString"
    is_winner false
    is_entrant false
    is_other false
  end
end
