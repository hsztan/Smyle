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

ActiveRecord::Schema.define(version: 2019_08_13_171542) do

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hearo_id"
    t.integer "smyler_id"
  end

  create_table "hearos", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "verification_code"
    t.datetime "dob"
    t.string "therapist_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "available"
    t.boolean "verified?", default: false
    t.integer "gender_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "title"
    t.datetime "start_time"
    t.string "notes"
    t.integer "smyler_id"
    t.integer "hearo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "score"
    t.string "content"
    t.integer "smyler_id"
    t.integer "hearo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "smylers", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.datetime "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "uid"
    t.string "image"
    t.integer "gender_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
