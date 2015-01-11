class User < ActiveRecord::Base
  attr_accessible :card_num, :district, :fio

  has_many :answers

  validates :card_num, presence: :true, length: { maximum: 3 }, uniqueness: true
  validates :district, presence: true
  validates :fio, presence: true, length: { minimum: 2 }
end
