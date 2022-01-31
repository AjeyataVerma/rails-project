class Competition < ApplicationRecord
  belongs_to :user
  has_one :leaderboard

  validates :comp_name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :duration, presence: true, numericality: {only_interger :true}
  validates :company_name, presence: true
end
