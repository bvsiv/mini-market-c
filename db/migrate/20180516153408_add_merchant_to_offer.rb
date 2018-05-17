class AddMerchantToOffer < ActiveRecord::Migration[5.2]
  def change
    add_reference :offers, :merchant, foreign_key: true
  end
end
