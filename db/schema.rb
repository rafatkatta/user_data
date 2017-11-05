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

ActiveRecord::Schema.define(version: 20171031132053) do

  create_table "accounts", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "country_code"
    t.string "zip_code"
    t.string "state"
    t.string "city"
    t.string "street"
    t.string "house"
    t.integer "data_type_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["data_type_id"], name: "index_addresses_on_data_type_id"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "data"
    t.string "type"
    t.integer "data_type_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["data_type_id"], name: "index_contacts_on_data_type_id"
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "data_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.date "birthday"
    t.string "birthplace"
    t.string "birth_country"
    t.string "identity_card_id"
    t.string "tax_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
