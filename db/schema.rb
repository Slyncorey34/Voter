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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160204204733) do
=======
ActiveRecord::Schema.define(version: 20160205190947) do
>>>>>>> da1db8c1c563669deac0e22ace61b3e82e6aa045

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
<<<<<<< HEAD
=======
    t.integer  "libVal"
    t.integer  "conVal"
>>>>>>> da1db8c1c563669deac0e22ace61b3e82e6aa045
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
