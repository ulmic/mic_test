class Answer < ActiveRecord::Base
  attr_accessible :answer_text, :question_id
  belongs_to :question
end
