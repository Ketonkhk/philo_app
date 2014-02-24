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

ActiveRecord::Schema.define(version: 20140224225307) do

  create_table "ballots", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment"
    t.integer  "round_id"
    t.integer  "user_id"
  end

  create_table "debates", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ballot_id"
    t.integer  "round_id"
    t.integer  "user_id"
  end

  create_table "rounds", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "scores", force: true do |t|
    t.integer  "points"
    t.integer  "rank"
    t.integer  "win"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ballot_id"
    t.integer  "user_id"
    t.string   "comment"
    t.string   "individualcomments"
  end

  create_table "users", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
    t.integer  "round_id"
    t.integer  "debate_id"
    t.integer  "ballot_id"
    t.integer  "score_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
