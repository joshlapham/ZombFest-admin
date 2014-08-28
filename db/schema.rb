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

ActiveRecord::Schema.define(version: 20140828043401) do

  create_table "abouts", force: true do |t|
    t.string   "title"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users", force: true do |t|
    t.string   "email",                      default: "",    null: false
    t.string   "password_digest", limit: 40
    t.boolean  "is_god",                     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true

  create_table "articles", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "url"
    t.string   "year"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "date"
  end

  create_table "events", force: true do |t|
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "future_event_times", force: true do |t|
    t.string   "location_name"
    t.string   "start_time"
    t.integer  "future_event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lat"
    t.string   "long"
  end

  create_table "future_events", force: true do |t|
    t.string   "year"
    t.string   "image_url"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "date"
  end

  create_table "gallery_urls", force: true do |t|
    t.string   "url"
    t.integer  "past_event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gallery_urls", ["past_event_id"], name: "index_gallery_urls_on_past_event_id"

  create_table "news_items", force: true do |t|
    t.string   "title"
    t.string   "content"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "id_for_app"
    t.string   "url"
  end

  create_table "past_events", force: true do |t|
    t.string   "year"
    t.string   "image_url"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "date"
  end

  create_table "social_media_links", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "title",                      null: false
    t.string   "author"
    t.string   "year"
    t.string   "duration"
    t.string   "video_url"
    t.string   "image_url"
    t.boolean  "is_winner",  default: false
    t.boolean  "is_entrant", default: false
    t.boolean  "is_other",   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "id_for_app"
  end

end
