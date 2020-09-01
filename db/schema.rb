# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_01_122347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "sighting_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "content"
    t.index ["sighting_id"], name: "index_comments_on_sighting_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "organisms", force: :cascade do |t|
    t.string "common_name"
    t.string "scientific_name"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category"
  end

  create_table "sightings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "organism_id", null: false
    t.string "location"
    t.float "lat"
    t.float "lng"
    t.string "habitat"
    t.string "weather"
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organism_id"], name: "index_sightings_on_organism_id"
    t.index ["user_id"], name: "index_sightings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "password_digest"
    t.string "pic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "sightings"
  add_foreign_key "comments", "users"
  add_foreign_key "sightings", "organisms"
  add_foreign_key "sightings", "users"
end
