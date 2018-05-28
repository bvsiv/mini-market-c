class FixColumnNameInOffer < ActiveRecord::Migration[5.2]
  def change
    rename_column :offers, :merchant_id, :product_id
  end
end
