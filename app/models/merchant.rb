class Merchant < ApplicationRecord
  has_secure_password
  
  validates :name, presence: true
  validates :email, uniqueness: true, presence: true

  has_many :offers
end
