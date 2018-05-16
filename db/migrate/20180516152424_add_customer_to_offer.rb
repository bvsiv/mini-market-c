class AddCustomerToOffer < ActiveRecord::Migration[5.2]
  def change
    add_reference :offers, :customer, foreign_key: true
  end
end
