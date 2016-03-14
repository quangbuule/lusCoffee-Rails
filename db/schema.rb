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

ActiveRecord::Schema.define(version: 20160314102526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dishes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.string   "section"
    t.string   "image_url"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "view_count",  default: 0, null: false
    t.integer  "point_count", default: 0, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "customer_address"
    t.string   "customer_phone"
    t.string   "customer_email"
    t.string   "dishes"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "user_name"
    t.string   "user_avatar"
    t.integer  "point"
    t.string   "content"
    t.integer  "dish_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "reviews", ["dish_id"], name: "index_reviews_on_dish_id", using: :btree

  add_foreign_key "reviews", "dishes"
end
