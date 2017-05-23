class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password

  validates :name, presence: true
  # validates :nausea, presence: true
  # validates :happiness, presence: true
  # validates :tickets, presence: true
  # validates :height, presence: true

  def mood
    if self.nausea < self.happiness
      'happy'
    else
      'sad'
    end
  end

  def num_of_rides
   self.attractions.count
  end

end
