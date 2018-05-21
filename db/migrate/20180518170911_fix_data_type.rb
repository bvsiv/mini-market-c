class FixDataType < ActiveRecord::Migration[5.2]
  def change
    change_column :merchants, :email, :string
  end
end
