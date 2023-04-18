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

ActiveRecord::Schema[7.0].define(version: 2023_04_18_223941) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batteries", force: :cascade do |t|
    t.string "category"
    t.date "year_use"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "delivery_id", null: false
    t.index ["delivery_id"], name: "index_batteries_on_delivery_id"
    t.index ["user_id"], name: "index_batteries_on_user_id"
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "address"
    t.date "delivery_date"
    t.date "collected_date"
    t.string "person_collected"
    t.string "person_delivery"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "battery_id", null: false
    t.index ["battery_id"], name: "index_deliveries_on_battery_id"
    t.index ["user_id"], name: "index_deliveries_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.boolean "supplier"
    t.string "address"
    t.string "cpf"
    t.string "cnpj", default: "f"
    t.string "password"
    t.string "cellphone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "batteries", "deliveries"
  add_foreign_key "batteries", "users"
  add_foreign_key "deliveries", "batteries"
  add_foreign_key "deliveries", "users"
end
