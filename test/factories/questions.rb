FactoryGirl.define do
  factory :question do
    correct_answer { generate :string }
    question_text { generate :string }
  end
end
