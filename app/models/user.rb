class User < ApplicationRecord
    has_many :competitions
    has_many :leaderboards

    validates :first_name, presence: true
    validates :last_name, presence: true
    #validates :email, presence: true, confirmation :true
    validates :company_name, presence: true
end

#, format: {with: /^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$/, message: "proper email"}