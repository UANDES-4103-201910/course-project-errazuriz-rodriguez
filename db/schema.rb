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

ActiveRecord::Schema.define(version: 2019_04_13_032000) do

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.text "comment"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_messages_on_receiver_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
  end

  create_table "post_attachments", force: :cascade do |t|
    t.integer "post_id"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_flags", force: :cascade do |t|
    t.integer "post_id"
    t.integer "user_id"
    t.text "comment"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "description"
    t.string "image"
    t.string "location"
    t.boolean "solved"
    t.boolean "open"
    t.boolean "dumpster"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_like_comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_id"
    t.boolean "like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_like_posts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.boolean "like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_places", force: :cascade do |t|
    t.integer "user_id"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_tags", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id_id"], name: "index_user_tags_on_comment_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "nick"
    t.integer "phone"
    t.string "email"
    t.string "country"
    t.string "city"
    t.string "image"
    t.boolean "admin"
    t.boolean "superadmin"
    t.boolean "blacklist"
    t.boolean "banned"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
  end

end
