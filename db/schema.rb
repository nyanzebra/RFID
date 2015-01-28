# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150125221503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.boolean  "onsale"
    t.text     "name"
    t.text     "description"
    t.text     "manufacturer"
    t.text     "category"
    t.text     "subcategory"
    t.text     "subsubcategory"
    t.integer  "gender"
    t.integer  "price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "rfids", force: :cascade do |t|
    t.text     "location_specific"
    t.integer  "location_general"
    t.text     "color"
    t.text     "size"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "item_id"
  end

end
