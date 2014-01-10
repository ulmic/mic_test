class Variant < ActiveRecord::Base
  attr_accessible :text, :question_id

  has_many :answers

  belongs_to :question
end
