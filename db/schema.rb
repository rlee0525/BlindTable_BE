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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170312012632) do
=======
ActiveRecord::Schema.define(version: 20170312001548) do
>>>>>>> 1faf192303306ed68602bbc256eafac4aa443665

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "availabilities", force: :cascade do |t|
    t.integer  "radius",                        null: false
    t.integer  "party_size",       default: 4,  null: false
    t.integer  "forward_minutes",  default: 60, null: false
    t.integer  "backward_minutes", default: 0,  null: false
    t.string   "start_date_tiime",              null: false
    t.string   "longitude",                     null: false
    t.string   "latitude",                      null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string  "rid",                 null: false
    t.string  "confirmation_number", null: false
    t.integer "party_size",          null: false
    t.string  "first_name",          null: false
    t.string  "last_name",           null: false
=======
  create_table "reservation_joins", force: :cascade do |t|
    t.integer  "reservation_id", null: false
    t.integer  "user_id",        null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["reservation_id"], name: "index_reservation_joins_on_reservation_id", using: :btree
    t.index ["user_id", "reservation_id"], name: "index_reservation_joins_on_user_id_and_reservation_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_reservation_joins_on_user_id", using: :btree
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "address",    null: false
    t.string   "state",      null: false
    t.string   "city",       null: false
    t.string   "zip",        null: false
    t.time     "time",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
>>>>>>> 1faf192303306ed68602bbc256eafac4aa443665
  end

  create_table "users", force: :cascade do |t|
    t.string   "image_url",     null: false
    t.text     "description",   null: false
    t.string   "first_name",    null: false
    t.string   "last_name",     null: false
    t.string   "phone_number",  null: false
    t.string   "session_token", null: false
    t.string   "authy_id",      null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "country_code"
    t.index ["authy_id"], name: "index_users_on_authy_id", using: :btree
    t.index ["phone_number"], name: "index_users_on_phone_number", unique: true, using: :btree
    t.index ["session_token"], name: "index_users_on_session_token", using: :btree
  end

end
