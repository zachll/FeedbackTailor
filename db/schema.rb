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

ActiveRecord::Schema.define(version: 20140408081333) do

  create_table "measures", primary_key: "measure_id", force: true do |t|
    t.string "name",        limit: 50, null: false
    t.string "description", limit: 50
    t.string "period",      limit: 50, null: false
    t.string "level",       limit: 30
  end

  create_table "performance_reports", primary_key: "report_id", force: true do |t|
    t.integer  "measure_id",                  null: false
    t.integer  "site_id",                     null: false
    t.datetime "report_date"
    t.integer  "numerator",                   null: false
    t.integer  "denominator",                 null: false
    t.boolean  "voided",      default: false
  end

  create_table "provider_reports", primary_key: "provider_report_id", force: true do |t|
    t.integer "provider_id",                 null: false
    t.integer "report_id",                   null: false
    t.boolean "voided",      default: false
  end

  add_index "provider_reports", ["provider_id"], name: "provider_id", using: :btree
  add_index "provider_reports", ["report_id"], name: "report_id", using: :btree

  create_table "providers", id: false, force: true do |t|
    t.integer "provider_id",                 null: false
    t.integer "site_id",                     null: false
    t.boolean "voided",      default: false
  end

  add_index "providers", ["site_id"], name: "site_id", using: :btree

  create_table "sites", primary_key: "site_id", force: true do |t|
    t.string "site_name", limit: 50, null: false
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
