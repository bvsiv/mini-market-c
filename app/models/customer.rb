class Customer < ApplicationRecord
	validates :name, presence: true
	validates :email, presence: true, format: /\A.+@.+\..+\z/, uniqueness: true

	has_many :offers
end
