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

ActiveRecord::Schema.define(version: 20180527171313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pg_trgm"
  enable_extension "unaccent"
  enable_extension "fuzzystrmatch"

  create_table "indents", force: :cascade do |t|
    t.string   "warehouse"
    t.string   "no"
    t.string   "grp"
    t.string   "item"
    t.string   "make"
    t.string   "uom"
    t.string   "qt_p"
    t.string   "dt"
    t.string   "rq"
    t.string   "cc"
    t.string   "remarks"
    t.text     "details"
    t.string   "pr_po"
    t.string   "by"
    t.string   "status"
    t.string   "date"
    t.string   "person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "indents", ["details"], name: "index_indents_on_details", using: :btree
  add_index "indents", ["grp"], name: "index_indents_on_grp", using: :btree
  add_index "indents", ["no"], name: "index_indents_on_no", using: :btree
  add_index "indents", ["warehouse"], name: "index_indents_on_warehouse", using: :btree

end
