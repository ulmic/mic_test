FactoryGirl.define do
  factory :answer do
    text { generate :string }
    question
    question_id { Question.last ? Question.last.id : 1 }
    user
    variant
  end
end
