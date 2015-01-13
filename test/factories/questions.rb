FactoryGirl.define do
  factory :question do
    answer { generate :string }
    text { generate :string }
    right_answer_id 1
  end
end
