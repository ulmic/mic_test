FactoryGirl.define do
  factory :variant do
    text { generate :string }
    question
    question_id { Question.last ? Question.last.id : 1 }
  end
end
