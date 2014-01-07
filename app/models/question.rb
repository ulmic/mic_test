class Question < ActiveRecord::Base
  attr_accessible :answer, :text
  has_many :answers
end
