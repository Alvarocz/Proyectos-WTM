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

ActiveRecord::Schema.define(version: 20160303192601) do

  create_table "answers", force: true do |t|
    t.string   "message"
    t.float    "score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subject_id"
    t.integer  "homework_id"
    t.integer  "student_id"
  end

  create_table "homeworks", force: true do |t|
    t.string   "statement"
    t.string   "final_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "teacher_id"
    t.integer  "subject_id"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "identification"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students_subjects", id: false, force: true do |t|
    t.integer "student_id"
    t.integer "subject_id"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects_teachers", id: false, force: true do |t|
    t.integer "subject_id"
    t.integer "teacher_id"
  end

  create_table "teachers", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "identification"
    t.integer  "subject_id",     limit: 255
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
