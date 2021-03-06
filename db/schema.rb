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

ActiveRecord::Schema.define(version: 2019_04_22_224026) do

  create_table "options", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "main_text"
    t.bigint "story_id"
    t.bigint "option_id"
    t.string "identifier"
    t.index ["option_id"], name: "index_options_on_option_id"
    t.index ["story_id"], name: "index_options_on_story_id"
  end

  create_table "stories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "main_text"
  end

  add_foreign_key "options", "options"
  add_foreign_key "options", "stories"
end
