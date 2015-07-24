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

ActiveRecord::Schema.define(version: 20150723144924) do

  create_table "courses", force: :cascade do |t|
    t.string  "coursename"
    t.float   "lat"
    t.float   "lng"
    t.string  "address"
    t.boolean "public_course"
    t.integer "numberOfholes"
    t.integer "coursehandicap"
    t.text    "description"
    t.text    "review"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "courseplayed"
    t.datetime "dateplayed"
    t.datetime "datereviewed"
    t.integer  "paceofplay"
    t.integer  "conditions"
    t.integer  "staff"
    t.integer  "facilities"
    t.integer  "value"
    t.boolean  "recommend"
    t.text     "hole1"
    t.text     "hole2"
    t.text     "hole3"
    t.text     "hole4"
    t.text     "hole5"
    t.text     "hole6"
    t.text     "hole7"
    t.text     "hole8"
    t.text     "hole9"
    t.text     "hole10"
    t.text     "hole11"
    t.text     "hole12"
    t.text     "hole13"
    t.text     "hole14"
    t.text     "hole15"
    t.text     "hole16"
    t.text     "hole17"
    t.text     "hole18"
    t.integer  "user_id"
    t.integer  "course_id"
    t.text     "gen_review"
  end

  create_table "users", force: :cascade do |t|
    t.string  "username"
    t.string  "password"
    t.string  "fname"
    t.string  "lname"
    t.string  "email"
    t.integer "handicap"
  end

end
