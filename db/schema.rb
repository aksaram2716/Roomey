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

ActiveRecord::Schema.define(version: 20171107211008) do

  create_table "chores", force: :cascade do |t|
    t.string "name"
    t.boolean "completed"
    t.integer "frequency"
    t.datetime "startDate"
    t.datetime "endDate"
    t.integer "createdUID"
    t.integer "noteID"
    t.integer "assignedUID"
    t.integer "homes_id"
    t.index ["homes_id"], name: "index_chores_on_homes_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "message_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_comments_on_message_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "creationDate"
    t.datetime "eventDate"
    t.integer "user_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "financial_records", force: :cascade do |t|
    t.decimal "amount"
    t.date "dateOwed"
    t.date "datePaid"
    t.integer "receiverUID"
    t.integer "recieverSID"
    t.boolean "paid"
    t.integer "homes_id"
    t.integer "users_id"
    t.index ["homes_id"], name: "index_financial_records_on_homes_id"
    t.index ["users_id"], name: "index_financial_records_on_users_id"
  end

  create_table "grocery_lists", force: :cascade do |t|
    t.decimal "price"
    t.string "name"
    t.integer "quantity"
    t.boolean "shouldBuy"
    t.integer "timesBought"
    t.integer "homes_id"
    t.index ["homes_id"], name: "index_grocery_lists_on_homes_id"
  end

  create_table "homes", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "electricService"
    t.integer "waterService"
    t.integer "gasService"
    t.integer "homePicture"
    t.integer "users_id"
    t.index ["users_id"], name: "index_homes_on_users_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "text"
    t.datetime "startDate"
    t.datetime "endDate"
    t.boolean "public"
    t.integer "homes_id"
    t.integer "users_id"
    t.index ["homes_id"], name: "index_notes_on_homes_id"
    t.index ["users_id"], name: "index_notes_on_users_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "location"
    t.string "website"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.integer "homes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["homes_id"], name: "index_users_on_homes_id"
  end

end
