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

ActiveRecord::Schema.define(version: 20170301051748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.date     "calendar_date"
    t.string   "occasion"
    t.boolean  "recurring_yearly"
    t.integer  "recipient_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["recipient_id"], name: "index_events_on_recipient_id", using: :btree
  end

  create_table "gifts", force: :cascade do |t|
    t.string   "item"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "gift_id"
    t.string   "tracking_number"
    t.boolean  "confirmed_delivery"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.text     "gift_message"
    t.float    "total_price"
    t.index ["event_id"], name: "index_orders_on_event_id", using: :btree
    t.index ["gift_id"], name: "index_orders_on_gift_id", using: :btree
  end

  create_table "recipients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "zip_code"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "gift_ideas"
    t.index ["user_id"], name: "index_recipients_on_user_id", using: :btree
  end

  create_table "traits", force: :cascade do |t|
    t.boolean  "reading"
    t.boolean  "film"
    t.boolean  "cooking"
    t.boolean  "art"
    t.boolean  "electronics"
    t.boolean  "sports"
    t.boolean  "fashion"
    t.boolean  "gaming"
    t.boolean  "music"
    t.boolean  "travel"
    t.boolean  "outdoor_activities"
    t.boolean  "female"
    t.boolean  "male"
    t.boolean  "cheapest_price"
    t.boolean  "low_price"
    t.boolean  "med_price"
    t.boolean  "high_price"
    t.string   "traitable_type"
    t.integer  "traitable_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "age"
    t.index ["traitable_type", "traitable_id"], name: "index_traits_on_traitable_type_and_traitable_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "stripe_id"
    t.string   "phone_number"
    t.string   "phone_carrier"
    t.boolean  "email_reminder"
    t.boolean  "sms_reminder"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "zip_code"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.boolean  "admin"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "events", "recipients"
  add_foreign_key "orders", "events"
  add_foreign_key "orders", "gifts"
  add_foreign_key "recipients", "users"
end
