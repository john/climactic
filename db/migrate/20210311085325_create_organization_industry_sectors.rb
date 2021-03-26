class CreateOrganizationIndustrySectors < ActiveRecord::Migration[6.1]
  def change
    create_table :organization_industry_sectors do |t|
      t.references :organization, null: false, foreign_key: true
      t.references :industry_sector, null: false, foreign_key: true

      t.timestamps
    end
  end
end
