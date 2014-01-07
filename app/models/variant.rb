class Variant < ActiveRecord::Base
  attr_accessible :text, :question_id

  belongs_to :question
end
