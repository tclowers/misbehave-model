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
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.text     "active_prop_question",    limit: 65535
    t.text     "active_question",         limit: 65535
    t.text     "receptive_question",      limit: 65535
    t.text     "receptive_prop_question", limit: 65535
    t.string   "name",                    limit: 255
  end

  create_table "items", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.text     "description",     limit: 65535
    t.text     "part_identifier", limit: 65535
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.decimal  "price",                         precision: 12, scale: 2
    t.decimal  "shipping_fee",                  precision: 12, scale: 2
  end

  create_table "preferences", force: :cascade do |t|
    t.boolean  "active",      limit: 1
    t.boolean  "receptive",   limit: 1
    t.integer  "activity_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "preferences", ["activity_id"], name: "index_preferences_on_activity_id", using: :btree

  create_table "props", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "quiz_questions", force: :cascade do |t|
    t.integer  "quiz_id",     limit: 4
    t.integer  "activity_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "quiz_questions", ["activity_id"], name: "index_quiz_questions_on_activity_id", using: :btree
  add_index "quiz_questions", ["quiz_id"], name: "index_quiz_questions_on_quiz_id", using: :btree

  create_table "quizzes", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "alias",       limit: 255
    t.string   "email",       limit: 255
    t.integer  "gender",      limit: 4
    t.string   "password",    limit: 255
    t.string   "salt",        limit: 255
    t.string   "access_pass", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_foreign_key "preferences", "activities"
  add_foreign_key "quiz_questions", "activities"
  add_foreign_key "quiz_questions", "quizzes"
end
