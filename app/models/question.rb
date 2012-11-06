class Question < ActiveRecord::Base
  attr_accessible :correct_answer, :question_text
  has_many :answers
end
