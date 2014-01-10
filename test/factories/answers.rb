FactoryGirl.define do
  factory :answer do
    text { generate :string }
    question
    user
    variant
  end
end
