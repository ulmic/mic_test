class Question < ActiveRecord::Base
  attr_accessible :answer, :text

  has_many :answers

  validates :answer, presence: true
  validates :text, presence: true
end
