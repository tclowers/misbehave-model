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

ActiveRecord::Schema.define(version: 20150125000033) do

  create_table "activities", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.text     "active_prop_question"
    t.text     "active_question"
    t.text     "receptive_question"
    t.text     "receptive_prop_question"
    t.string   "name"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "part_identifier"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.decimal  "price",           precision: 12, scale: 2
    t.decimal  "shipping_fee",    precision: 12, scale: 2
  end

  create_table "preferences", force: :cascade do |t|
    t.boolean  "active"
    t.boolean  "receptive"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "preferences", ["activity_id"], name: "index_preferences_on_activity_id"

  create_table "props", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "quiz_questions", force: :cascade do |t|
    t.integer  "quiz_id"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "quiz_questions", ["activity_id"], name: "index_quiz_questions_on_activity_id"
  add_index "quiz_questions", ["quiz_id"], name: "index_quiz_questions_on_quiz_id"

  create_table "quizzes", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "alias"
    t.string   "email"
    t.integer  "gender"
    t.string   "password"
    t.string   "salt"
    t.string   "access_pass"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
