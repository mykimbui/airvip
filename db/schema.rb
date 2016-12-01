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

ActiveRecord::Schema.define(version: 20161201131713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blocked_days", force: :cascade do |t|
    t.string   "date"
    t.integer  "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_blocked_days_on_users_id", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.string   "content"
    t.string   "date"
    t.integer  "price"
    t.string   "status"
    t.integer  "renter_id"
    t.integer  "celeb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_photos_on_users_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "content"
    t.integer  "rating"
    t.integer  "renter_id"
    t.integer  "celeb_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "bookings_id"
    t.index ["bookings_id"], name: "index_reviews_on_bookings_id", using: :btree
  end

  create_table "specialities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_languages", force: :cascade do |t|
    t.integer  "users_id"
    t.integer  "languages_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["languages_id"], name: "index_user_languages_on_languages_id", using: :btree
    t.index ["users_id"], name: "index_user_languages_on_users_id", using: :btree
  end

  create_table "user_specialities", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.integer  "speciality_id"
    t.index ["speciality_id"], name: "index_user_specialities_on_speciality_id", using: :btree
    t.index ["user_id"], name: "index_user_specialities_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "city"
    t.string   "address"
    t.string   "role"
    t.integer  "price_per_day"
    t.string   "profile_picture"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "blocked_days", "users", column: "users_id"
  add_foreign_key "photos", "users", column: "users_id"
  add_foreign_key "reviews", "bookings", column: "bookings_id"
  add_foreign_key "user_languages", "languages", column: "languages_id"
  add_foreign_key "user_languages", "users", column: "users_id"
end
