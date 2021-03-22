class CreateOrganizationAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :organization_addresses do |t|
      # t.integer :organization_id
      # t.integer :address_id
      # t.integer :organization_address_type
      t.references :organization, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.references :organization_address_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
