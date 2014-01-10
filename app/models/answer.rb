class Answer < ActiveRecord::Base
  attr_accessible :text,
                  :question_id,
                  :user_id,
                  :variant_id

  belongs_to :question
  belongs_to :user
  belongs_to :variant

  validates :question_id, presence: true
  validates :user_id, presence: true
end
