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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121021180552) do

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.string   "image_url"
    t.string   "url"
    t.string   "intro_video_url"
    t.text     "description"
    t.decimal  "cost"
    t.datetime "start_date"
    t.string   "provider"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "courses_instructors", :id => false, :force => true do |t|
    t.integer "course_id"
    t.integer "instructor_id"
  end

  add_index "courses_instructors", ["course_id", "instructor_id"], :name => "index_courses_instructors_on_course_id_and_instructor_id", :unique => true

  create_table "courses_topics", :id => false, :force => true do |t|
    t.integer "course_id"
    t.integer "topic_id"
  end

  add_index "courses_topics", ["course_id", "topic_id"], :name => "index_courses_topics_on_course_id_and_topic_id", :unique => true

  create_table "courses_universities", :id => false, :force => true do |t|
    t.integer "course_id"
    t.integer "university_id"
  end

  add_index "courses_universities", ["course_id", "university_id"], :name => "index_courses_universities_on_course_id_and_university_id", :unique => true

  create_table "instructors", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.string   "url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lectures", :force => true do |t|
    t.string   "title"
    t.integer  "number"
    t.string   "video_url"
    t.integer  "course_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lectures_topics", :id => false, :force => true do |t|
    t.integer "lecture_id"
    t.integer "topic_id"
  end

  add_index "lectures_topics", ["lecture_id", "topic_id"], :name => "index_lectures_topics_on_lecture_id_and_topic_id", :unique => true

  create_table "topics", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "universities", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "image_url"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
