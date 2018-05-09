class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.decimal :suggested_price

      t.timestamps
    end
  end
end
