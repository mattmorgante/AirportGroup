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

ActiveRecord::Schema.define(version: 20150126121256) do

  create_table "flights", force: :cascade do |t|
    t.integer  "flight_number"
    t.string   "airline"
    t.string   "destination"
    t.datetime "departure_time"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "origin"
    t.integer  "passengers_capacity"
  end

  create_table "passengers", force: :cascade do |t|
    t.string   "passport_id"
    t.string   "name"
    t.integer  "age"
    t.integer  "flight_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "passengers", ["flight_id"], name: "index_passengers_on_flight_id"

  create_table "tickets", force: :cascade do |t|
    t.string   "ticket_id"
    t.integer  "flight_id"
    t.integer  "passenger_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "tickets", ["flight_id"], name: "index_tickets_on_flight_id"
  add_index "tickets", ["passenger_id"], name: "index_tickets_on_passenger_id"

end
