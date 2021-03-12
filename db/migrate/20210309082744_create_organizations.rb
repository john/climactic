class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.integer :organization_type_id
      t.string :name
      t.text :description
      t.string :external_identifier

      t.timestamps
    end
  end
end
