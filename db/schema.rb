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

ActiveRecord::Schema.define(version: 20160929024129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: :cascade do |t|
    t.string   "name",          null: false
    t.datetime "purchase_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "histories", force: :cascade do |t|
    t.text     "description"
    t.datetime "date_history"
    t.integer  "asset_id",       null: false
    t.integer  "transaction_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "histories", ["asset_id"], name: "index_histories_on_asset_id", using: :btree
  add_index "histories", ["transaction_id"], name: "index_histories_on_transaction_id", using: :btree

  create_table "transactions", force: :cascade do |t|
    t.string   "title"
    t.datetime "date_transaction"
    t.decimal  "price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
