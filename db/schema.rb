# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_22_060822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer "contact_id"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "postal_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "boundaries", force: :cascade do |t|
    t.string "name"
    t.bigint "organization_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_boundaries_on_organization_id"
  end

  create_table "facility_types", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ghg_inventories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "industry_sectors", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organization_address_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organization_addresses", force: :cascade do |t|
    t.bigint "organization_id", null: false
    t.bigint "address_id", null: false
    t.bigint "organization_address_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_organization_addresses_on_address_id"
    t.index ["organization_address_type_id"], name: "index_organization_addresses_on_organization_address_type_id"
    t.index ["organization_id"], name: "index_organization_addresses_on_organization_id"
  end

  create_table "organization_industry_sectors", force: :cascade do |t|
    t.bigint "organization_id", null: false
    t.bigint "industry_sector_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["industry_sector_id"], name: "index_organization_industry_sectors_on_industry_sector_id"
    t.index ["organization_id"], name: "index_organization_industry_sectors_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.integer "organization_type_id"
    t.string "name"
    t.text "description"
    t.string "external_identifier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "boundaries", "organizations"
  add_foreign_key "organization_addresses", "addresses"
  add_foreign_key "organization_addresses", "organization_address_types"
  add_foreign_key "organization_addresses", "organizations"
  add_foreign_key "organization_industry_sectors", "industry_sectors"
  add_foreign_key "organization_industry_sectors", "organizations"
end
