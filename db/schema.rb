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

ActiveRecord::Schema[7.2].define(version: 2024_11_02_221209) do
  create_table "characters", force: :cascade do |t|
    t.integer "page_id"
    t.string "name"
    t.string "urlslug"
    t.string "identity_status"
    t.string "alignment"
    t.string "eye_color"
    t.string "hair_color"
    t.string "sex"
    t.string "gsm"
    t.string "alive_status"
    t.integer "appearances"
    t.string "first_appearance"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "comic_series_id"
    t.string "universe"
    t.index ["comic_series_id"], name: "index_characters_on_comic_series_id"
  end

  create_table "comic_series", force: :cascade do |t|
    t.string "name"
    t.string "publisher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "characters", "comic_series"
end
