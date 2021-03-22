class CreateGhgInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :ghg_inventories do |t|
      t.string :name

      t.timestamps
    end
  end
end
