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

ActiveRecord::Schema.define(version: 2022_04_28_160724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "capacity"
    t.datetime "begins_at"
    t.datetime "ends_at"
    t.bigint "org_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["org_id"], name: "index_events_on_org_id"
  end

  create_table "org_admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "phone_number_mobile", default: "", null: false
    t.integer "gender", null: false
    t.datetime "birthday", default: "2022-04-28 16:19:33", null: false
    t.string "zip_code", default: "", null: false
    t.string "address", default: "", null: false
    t.bigint "org_id"
    t.index ["email"], name: "index_org_admins_on_email", unique: true
    t.index ["org_id"], name: "index_org_admins_on_org_id"
    t.index ["reset_password_token"], name: "index_org_admins_on_reset_password_token", unique: true
  end

  create_table "orgs", force: :cascade do |t|
    t.string "name"
    t.string "phone_number", default: "", null: false
    t.string "email", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ticket_types", force: :cascade do |t|
    t.bigint "event_id"
    t.string "name"
    t.string "currency"
    t.boolean "free_ticket"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_ticket_types_on_event_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "ticket_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ticket_type_id"], name: "index_tickets_on_ticket_type_id"
  end

end
