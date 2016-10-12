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

ActiveRecord::Schema.define(version: 20161012202011) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reservations", force: :cascade do |t|
    t.integer  "passenger_id"
    t.integer  "voyage_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "seat_location"
    t.string   "life_jacket_size"
    t.string   "need_accessibility"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.text     "bio"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "user_image_url"
    t.string   "user_image_file"
    t.string   "user_image_file_file_name"
    t.string   "user_image_file_content_type"
    t.integer  "user_image_file_file_size"
    t.datetime "user_image_file_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree
  end

  create_table "voyages", force: :cascade do |t|
    t.string   "title"
    t.integer  "captain_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "location"
    t.string   "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "capacity"
    t.string   "vessel_type"
    t.text     "boat_image_url"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "voyage_image_url"
  end

end
