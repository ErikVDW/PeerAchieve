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

ActiveRecord::Schema.define(version: 20150307214610) do

  create_table "blogs", force: :cascade do |t|
    t.string   "creator"
    t.string   "title"
    t.text     "body"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "blog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["blog_id"], name: "index_comments_on_blog_id"

  create_table "goal_comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "goal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "goal_comments", ["goal_id"], name: "index_goal_comments_on_goal_id"

  create_table "goals", force: :cascade do |t|
    t.text     "content"
    t.boolean  "achieved_status"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "goals", ["user_id"], name: "index_goals_on_user_id"

  create_table "likes", force: :cascade do |t|
    t.boolean  "liked_status"
    t.integer  "likeable_id"
    t.string   "likeable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "likes", ["likeable_type", "likeable_id"], name: "index_likes_on_likeable_type_and_likeable_id"

  create_table "products", force: :cascade do |t|
    t.string  "name"
    t.decimal "price"
    t.text    "description"
  end

  create_table "streaks", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "streaks", ["user_id"], name: "index_streaks_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_admin",               default: false
    t.string   "full_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
