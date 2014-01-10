class Question < ActiveRecord::Base
  attr_accessible :answer,
                  :text,
                  :right_answer_id

  has_many :answers
  has_many :variants

  validates :right_answer_id, presence: true
  validates :text, presence: true
end
