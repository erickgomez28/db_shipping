# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170504022844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "address"
    t.integer  "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_addresses_on_contact_id", using: :btree
  end

  create_table "bill_of_ladings", force: :cascade do |t|
    t.string   "code"
    t.integer  "travel_id"
    t.string   "consigneable_type"
    t.integer  "consigneable_id"
    t.string   "consolidable_type"
    t.integer  "consolidable_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["consigneable_type", "consigneable_id"], name: "index_bill_of_ladings_on_consigneable_type_and_consigneable_id", using: :btree
    t.index ["consolidable_type", "consolidable_id"], name: "index_bill_of_ladings_on_consolidable_type_and_consolidable_id", using: :btree
    t.index ["travel_id"], name: "index_bill_of_ladings_on_travel_id", using: :btree
  end

  create_table "consignees", force: :cascade do |t|
    t.string   "dni"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "consignees_nvoccs", id: false, force: :cascade do |t|
    t.integer "consignee_id", null: false
    t.integer "nvocc_id",     null: false
    t.index ["consignee_id", "nvocc_id"], name: "index_consignees_nvoccs_on_consignee_id_and_nvocc_id", using: :btree
    t.index ["nvocc_id", "consignee_id"], name: "index_consignees_nvoccs_on_nvocc_id_and_consignee_id", using: :btree
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "contactable_type"
    t.integer  "contactable_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["contactable_type", "contactable_id"], name: "index_contacts_on_contactable_type_and_contactable_id", using: :btree
  end

  create_table "container_kinds", force: :cascade do |t|
    t.string   "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "containers", force: :cascade do |t|
    t.integer  "kind_id"
    t.string   "distinctive"
    t.integer  "shipping_company_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["kind_id"], name: "index_containers_on_kind_id", using: :btree
    t.index ["shipping_company_id"], name: "index_containers_on_shipping_company_id", using: :btree
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email"
    t.integer  "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_emails_on_contact_id", using: :btree
  end

  create_table "nvoccs", force: :cascade do |t|
    t.string   "name"
    t.string   "dni"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string   "number"
    t.integer  "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_phones_on_contact_id", using: :btree
  end

  create_table "sea_ports", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_sea_ports_on_country_id", using: :btree
  end

  create_table "shipping_companies", force: :cascade do |t|
    t.string   "name"
    t.string   "dni"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travels", force: :cascade do |t|
    t.string   "code"
    t.date     "docking_date"
    t.integer  "origen_id"
    t.integer  "destination_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["destination_id"], name: "index_travels_on_destination_id", using: :btree
    t.index ["origen_id"], name: "index_travels_on_origen_id", using: :btree
  end

  create_table "web_sites", force: :cascade do |t|
    t.string   "web_site"
    t.integer  "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_web_sites_on_contact_id", using: :btree
  end

  add_foreign_key "addresses", "contacts"
  add_foreign_key "bill_of_ladings", "travels"
  add_foreign_key "containers", "shipping_companies"
  add_foreign_key "emails", "contacts"
  add_foreign_key "phones", "contacts"
  add_foreign_key "sea_ports", "countries"
  add_foreign_key "web_sites", "contacts"
end
