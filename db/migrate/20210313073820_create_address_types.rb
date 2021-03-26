class CreateAddressTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :address_types do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
