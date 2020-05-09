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

ActiveRecord::Schema.define(version: 2020_05_08_095232) do

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.float "cost"
    t.boolean "is_alive", default: true
    t.boolean "bought", default: false
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "list_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.float "max_budget"
    t.float "min_budget", default: 0.0
    t.string "color"
    t.string "status", default: "open"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "item_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "profile_picture_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
