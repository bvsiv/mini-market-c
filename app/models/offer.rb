class Offer < ApplicationRecord
  validates :suggested_price, presence: true
  validates :status, presence: true
  belongs_to :customer
  validates :customer, presence: true
  belongs_to :merchant
  validates :merchant, presence: true
end
