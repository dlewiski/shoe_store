class AlterJoinTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :brands_stores, :inventories
  end
end
