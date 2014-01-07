FactoryGirl.define do
  factory :question do
    answer { generate :string }
    text { generate :string }
  end
end
