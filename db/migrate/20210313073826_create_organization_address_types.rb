class CreateOrganizationAddressTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :organization_address_types do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
