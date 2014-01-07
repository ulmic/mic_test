class User < ActiveRecord::Base
  attr_accessible :card_num, :department, :fio

  validates :card_num, presence: :true, length: { maximum: 3 }
  validates :department, presence: true, length: { minimum: 2 }
  validates :fio, presence: true, length: { minimum: 2 }
end
