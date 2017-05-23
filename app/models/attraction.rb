class Attraction < ActiveRecord::Base
  has_many :users, through: :rides
  has_many :rides

  validates :name, presence: true
  validates :nausea_rating, presence: true
  validates :happiness_rating, presence: true
  validates :tickets, presence: true
  validates :min_height, presence: true
end
