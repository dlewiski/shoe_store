class CreateClassTables < ActiveRecord::Migration[5.1]
  def change
    create_table(:stores) do |t|
     t.column(:store, :string)
    end

    create_table(:brands) do |t|
     t.column(:brand, :string)
     t.column(:price, :decimal)
    end

    create_table(:brands_stores) do |t|
     t.column(:brand, :string)
     t.column(:price, :decimal)
    end
  end
end
