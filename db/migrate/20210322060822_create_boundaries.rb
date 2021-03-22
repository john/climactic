class CreateBoundaries < ActiveRecord::Migration[6.1]
  def change
    create_table :boundaries do |t|
      t.string :name
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
