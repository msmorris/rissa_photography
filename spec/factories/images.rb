# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image, :class => 'Images' do
    name "MyString"
    rating 1
    description "MyText"
    category "MyString"
  end
end
