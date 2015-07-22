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

ActiveRecord::Schema.define(version: 20150721181638) do

  create_table "courses", force: :cascade do |t|
    t.string  "coursename"
    t.float   "lat"
    t.float   "lng"
    t.string  "address"
    t.boolean "public"
    t.integer "numberOfholes"
    t.integer "coursehandicap"
    t.text    "description"
    t.text    "review"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "courseplayed"
    t.datetime "dateplayed"
    t.datetime "datereviewed"
    t.integer  "Paceofplay"
    t.integer  "Conditions"
    t.integer  "Staff"
    t.integer  "Facilities"
    t.integer  "Value"
    t.boolean  "Reccomend"
    t.text     "Hole1"
    t.text     "Hole2"
    t.text     "Hole3"
    t.text     "Hole4"
    t.text     "Hole5"
    t.text     "Hole6"
    t.text     "Hole7"
    t.text     "Hole8"
    t.text     "Hole9"
    t.text     "Hole10"
    t.text     "Hole11"
    t.text     "Hole12"
    t.text     "Hole13"
    t.text     "Hole14"
    t.text     "Hole15"
    t.text     "Hole16"
    t.text     "Hole17"
    t.text     "Hole18"
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
