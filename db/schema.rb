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

ActiveRecord::Schema.define(version: 20140601005951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: true do |t|
    t.string   "email",                                          default: "", null: false
    t.string   "encrypted_password",                             default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                  default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.text     "bio"
    t.string   "video"
    t.decimal  "balance",                precision: 8, scale: 2
    t.integer  "partner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
    t.string   "nickname"
    t.string   "photo"
  end

  add_index "clients", ["email"], name: "index_clients_on_email", unique: true, using: :btree
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true, using: :btree

  create_table "donations", force: true do |t|
    t.decimal  "amount"
    t.integer  "donor_id"
    t.integer  "goal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "donors", force: true do |t|
    t.string   "email",                                          default: "", null: false
    t.string   "encrypted_password",                             default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                  default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.decimal  "total",                  precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "bio"
    t.string   "full_name"
    t.string   "nickname"
    t.string   "photo"
  end

  add_index "donors", ["email"], name: "index_donors_on_email", unique: true, using: :btree
  add_index "donors", ["reset_password_token"], name: "index_donors_on_reset_password_token", unique: true, using: :btree

  create_table "goals", force: true do |t|
    t.string   "title"
    t.decimal  "amount"
    t.text     "description"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",      default: "active"
  end

  create_table "goals_needs", id: false, force: true do |t|
    t.integer "goal_id"
    t.integer "need_id"
  end

  add_index "goals_needs", ["goal_id", "need_id"], name: "index_goals_needs_on_goal_id_and_need_id", using: :btree

  create_table "needs", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partners", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.text     "bio"
    t.string   "nickname"
    t.string   "homepage"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
    t.string   "photo"
  end

  add_index "partners", ["email"], name: "index_partners_on_email", unique: true, using: :btree
  add_index "partners", ["reset_password_token"], name: "index_partners_on_reset_password_token", unique: true, using: :btree

  create_table "updates", force: true do |t|
    t.text     "body"
    t.string   "title"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
