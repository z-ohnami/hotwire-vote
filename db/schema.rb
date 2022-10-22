# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_21_132102) do
  create_table "subject_choices", force: :cascade do |t|
    t.integer "subject_id", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_subject_choices_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.string "session_id", null: false
    t.integer "subject_id", null: false
    t.integer "subject_choice_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id", "subject_id"], name: "index_votes_on_session_id_and_subject_id", unique: true
    t.index ["subject_choice_id"], name: "index_votes_on_subject_choice_id"
    t.index ["subject_id"], name: "index_votes_on_subject_id"
  end

  add_foreign_key "subject_choices", "subjects", on_update: :cascade, on_delete: :cascade
  add_foreign_key "votes", "subject_choices", on_update: :cascade, on_delete: :cascade
  add_foreign_key "votes", "subjects", on_update: :cascade, on_delete: :cascade
end
