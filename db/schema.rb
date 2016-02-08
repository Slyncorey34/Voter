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

ActiveRecord::Schema.define(version: 20160207022841) do

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "lib_points"
    t.integer  "con_points"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "attempts", force: :cascade do |t|
    t.integer  "quiz_id"
    t.integer  "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "attempts", ["quiz_id"], name: "index_attempts_on_quiz_id"

  create_table "candidates", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "city"
    t.string   "state"
    t.date     "birthday"
    t.string   "party"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "libVal"
    t.integer  "conVal"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "prompt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.string   "questions"
    t.boolean  "answers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voters", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "libVal"
    t.integer  "conVal"
  end

end
