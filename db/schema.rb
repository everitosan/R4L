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

ActiveRecord::Schema.define(version: 20150922155051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "info"
    t.datetime "dateHour"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "post_category_id"
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "events_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
  end

  add_index "events_users", ["event_id"], name: "index_events_users_on_event_id", using: :btree
  add_index "events_users", ["user_id"], name: "index_events_users_on_user_id", using: :btree

  create_table "goal_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "goal_category_id"
    t.float    "start"
    t.float    "current"
    t.float    "desire"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "goals", ["goal_category_id"], name: "index_goals_on_goal_category_id", using: :btree
  add_index "goals", ["user_id"], name: "index_goals_on_user_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
  end

  add_index "groups", ["user_id"], name: "index_groups_on_user_id", using: :btree

  create_table "groups_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "group_id"
  end

  add_index "groups_users", ["group_id"], name: "index_groups_users_on_group_id", using: :btree
  add_index "groups_users", ["user_id"], name: "index_groups_users_on_user_id", using: :btree

  create_table "identities", force: :cascade do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "payment_transaction"
    t.string   "method"
    t.float    "amount"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "payments", ["user_id"], name: "index_payments_on_user_id", using: :btree

  create_table "personal_projects", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "socialProblem"
    t.string   "impact"
    t.string   "description"
    t.string   "image"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "personal_projects", ["user_id"], name: "index_personal_projects_on_user_id", using: :btree

  create_table "post_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_contexts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "text"
    t.integer  "post_context_id"
    t.integer  "contextId"
    t.integer  "post_category_id"
    t.string   "image"
    t.string   "video"
    t.float    "likes",            default: 0.0
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "posts", ["post_category_id"], name: "index_posts_on_post_category_id", using: :btree
  add_index "posts", ["post_context_id"], name: "index_posts_on_post_context_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "statistics", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "goal_category_id"
    t.float    "quantity"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "statistics", ["goal_category_id"], name: "index_statistics_on_goal_category_id", using: :btree
  add_index "statistics", ["user_id"], name: "index_statistics_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "email"
    t.text     "address"
    t.integer  "zipCode"
    t.string   "country"
    t.string   "telephone"
    t.string   "password"
    t.boolean  "verified",    default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "picProfile"
    t.float    "last_weight"
    t.float    "last_height"
    t.string   "role"
  end

end
