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

ActiveRecord::Schema.define(version: 20160901203855) do

  create_table "alloys", force: :cascade do |t|
    t.string   "name"
    t.integer  "base_cost"
    t.text     "recipe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elements", force: :cascade do |t|
    t.string   "name"
    t.integer  "base_cost"
    t.text     "recipe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "category"
  end

  create_table "energies", force: :cascade do |t|
    t.string   "name"
    t.integer  "base_cost"
    t.text     "recipe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exosuit_upgrades", force: :cascade do |t|
    t.string   "name"
    t.text     "recipe"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "exosuit_id"
  end

  create_table "exosuits", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "multitool_upgrades", force: :cascade do |t|
    t.string   "name"
    t.text     "recipe"
    t.string   "category"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "multitool_id"
  end

  create_table "multitools", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ship_upgrades", force: :cascade do |t|
    t.string   "name"
    t.text     "recipe"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "ship_id"
  end

  create_table "ships", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technologies", force: :cascade do |t|
    t.string   "name"
    t.integer  "base_cost"
    t.text     "recipe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trade_commodities", force: :cascade do |t|
    t.string   "name"
    t.integer  "base_cost"
    t.text     "recipe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
