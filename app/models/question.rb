class Question < ActiveRecord::Base
  attr_accessible :answer,
                  :text,
                  :right_answer_id

  has_many :answers

  validates :answer
  validates :right_answer_id, presence: true
  validates :text, presence: true
end
