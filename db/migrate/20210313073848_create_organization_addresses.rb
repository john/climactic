class CreateOrganizationAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :organization_addresses do |t|
      t.integer :organization_id
      t.integer :address_id
      t.integer :organization_address_type

      t.timestamps
    end
  end
end
