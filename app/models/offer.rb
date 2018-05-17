class Offer < ApplicationRecord
  validates :suggested_price, presence: true
  validates :status, presence: true
  belongs_to :customer, required: true
  belongs_to :merchant, required: true
end
