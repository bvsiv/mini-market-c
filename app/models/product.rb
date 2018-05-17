class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  belongs_to :merchant, required: true
end
