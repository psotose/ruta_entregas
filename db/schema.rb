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

ActiveRecord::Schema.define(version: 2020_11_24_230623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "map_routes", force: :cascade do |t|
    t.string "user"
    t.string "file_name"
    t.string "base"
    t.date "date"
    t.string "start_time"
    t.string "delivery_time"
    t.integer "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "map_stops", force: :cascade do |t|
    t.string "nid"
    t.integer "cargo"
    t.string "start_time"
    t.string "delivery_time"
    t.bigint "map_route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["map_route_id"], name: "index_map_stops_on_map_route_id"
  end

  add_foreign_key "map_stops", "map_routes"
end
