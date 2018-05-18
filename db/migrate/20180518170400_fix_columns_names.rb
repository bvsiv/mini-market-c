class FixColumnsNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :merchants, :title, :name
    rename_column :merchants, :text, :email
  end
end
