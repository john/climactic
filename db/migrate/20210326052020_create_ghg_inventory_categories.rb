class CreateGhgInventoryCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :ghg_inventory_categories do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
