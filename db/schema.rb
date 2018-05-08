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

ActiveRecord::Schema.define(version: 2018_05_08_050555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.string "job_title"
    t.string "link"
    t.date "date_applied"
    t.string "cover_letter_used"
    t.string "reume_used"
    t.string "listing_site"
    t.text "technologies"
    t.boolean "remote_possible"
    t.string "location"
    t.boolean "heard_back"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "resume_used"
  end

  create_table "prospects", force: :cascade do |t|
    t.string "job_title"
    t.string "link"
    t.text "technologies"
    t.text "comment"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
