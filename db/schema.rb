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

ActiveRecord::Schema.define(version: 20171029214032) do

  create_table "chores", id: false, force: :cascade do |t|
    t.string "name"
    t.boolean "completed"
    t.integer "frequency"
    t.datetime "startDate"
    t.datetime "endDate"
    t.integer "cid"
    t.integer "primary_key"
    t.integer "aid"
    t.integer "createdUID"
    t.integer "noteID"
    t.integer "assignedUID"
  end

  create_table "financial_records", id: false, force: :cascade do |t|
    t.decimal "amount"
    t.datetime "dateOwed"
    t.datetime "datePaid"
    t.integer "uid"
    t.integer "aid"
    t.integer "receiverUID"
    t.integer "recieverSID"
    t.boolean "paid"
    t.integer "transactionID"
    t.integer "primary_key"
  end

  create_table "grocery_lists", id: false, force: :cascade do |t|
    t.decimal "price"
    t.string "name"
    t.integer "timesBought"
    t.integer "gid"
    t.integer "primary_key"
    t.integer "aid"
  end

  create_table "homes", id: false, force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "User_id"
    t.string "electricService"
    t.string "waterService"
    t.string "gasService"
    t.string "homePicture"
    t.integer "aid"
    t.integer "primary_key"
    t.index ["User_id"], name: "index_homes_on_User_id"
  end

  create_table "notes", id: false, force: :cascade do |t|
    t.string "text"
    t.datetime "startDate"
    t.datetime "endDate"
    t.boolean "public"
    t.integer "noteID"
    t.integer "primary_key"
  end

  create_table "services", id: false, force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "location"
    t.string "website"
  end

  create_table "users", id: false, force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.integer "uid"
    t.integer "primary_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
