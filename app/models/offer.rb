class Offer < ApplicationRecord
  validates :suggested_price, presence: true
  validates :status, presence: true
end
