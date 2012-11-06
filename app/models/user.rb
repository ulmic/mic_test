class User < ActiveRecord::Base
  attr_accessible :card_num, :department, :fio
  validates_inclusion_of :card_num, :within => 1..535
  validates_length_of :department, :fio, :minimum => 2
end
