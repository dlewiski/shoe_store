class ChangeJoinColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :inventories, :brand, :string
    remove_column :inventories, :price, :decimal
    add_column :inventories, :brand_id, :integer
    add_column :inventories, :store_id, :integer
  end
end
