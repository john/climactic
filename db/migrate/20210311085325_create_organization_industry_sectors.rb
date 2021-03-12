class CreateOrganizationIndustrySectors < ActiveRecord::Migration[6.1]
  def change
    create_table :organization_industry_sectors do |t|
      t.integer :organization_id
      t.integer :industry_sector_id

      t.timestamps
    end
  end
end
