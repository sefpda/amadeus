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

ActiveRecord::Schema.define(version: 20160517142101) do

  create_table "full_ranges", force: :cascade do |t|
    t.string "name"
  end

  create_table "keys", force: :cascade do |t|
    t.integer "mode_id"
    t.integer "scale_note_id"
  end

  add_index "keys", ["mode_id"], name: "index_keys_on_mode_id"

  create_table "modes", force: :cascade do |t|
    t.string  "name"
    t.integer "step_sequence"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "pitch_id"
    t.integer "scale_note_id"
  end

  add_index "notes", ["pitch_id"], name: "index_notes_on_pitch_id"

  create_table "part_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string  "data"
    t.integer "part_type_id"
  end

  create_table "pitches", force: :cascade do |t|
    t.float "hertz", null: false
  end

  add_index "pitches", ["hertz"], name: "index_pitches_on_hertz"

  create_table "playable_ranges", force: :cascade do |t|
    t.integer "low_pitch_id"
    t.integer "high_pitch_id"
  end

  create_table "scale_notes", force: :cascade do |t|
    t.string  "pitch_family"
    t.integer "modifier"
  end

  create_table "sequenced_ranges", force: :cascade do |t|
    t.integer "playable_range_id"
    t.integer "full_range_id"
    t.integer "sequence"
    t.string  "name"
  end

end
