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

ActiveRecord::Schema.define(version: 20161001224449) do

  create_table "reservations", force: :cascade do |t|
    t.integer  "passenger_id"
    t.integer  "voyage_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.text     "bio"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "voyages", force: :cascade do |t|
    t.string   "title"
    t.integer  "captain_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "location"
    t.string   "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "capacity"
    t.string   "vessel_type"
  end

end
