class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.integer :contact_id
      t.string :address_line_1
      t.string :address_line_2
      t.string :postal_code

      t.timestamps
    end
  end
end
