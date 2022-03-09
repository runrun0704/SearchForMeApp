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

ActiveRecord::Schema.define(version: 2022_03_09_081924) do

  create_table "data", force: :cascade do |t|
    t.text "m_h_y"
    t.text "m_h_s"
    t.text "m_h_t"
    t.text "m_h_k"
    t.text "m_h_d"
    t.text "swot_s"
    t.text "swot_w"
    t.text "swot_o"
    t.text "swot_t"
    t.text "s_o"
    t.text "s_t"
    t.text "w_o"
    t.text "w_t"
    t.text "will"
    t.text "can"
    t.text "must"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "id_pass"
  end

  create_table "graphs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age"
    t.integer "happy"
    t.string "comment"
    t.string "pass"
  end

end
