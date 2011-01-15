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

ActiveRecord::Schema.define(:version => 20110109203626) do

  create_table "boat_companies", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "address"
    t.string   "secret"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_translations", :force => true do |t|
    t.integer  "boat_id"
    t.string   "locale"
    t.string   "boat_type"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "boat_translations", ["boat_id"], :name => "index_boat_translations_on_boat_id"

  create_table "boats", :force => true do |t|
    t.string   "name"
    t.integer  "max_persons"
    t.integer  "max_persons_buffet"
    t.integer  "max_persons_dinner"
    t.integer  "min_hours"
    t.boolean  "frontpage"
    t.boolean  "active"
    t.integer  "price1"
    t.integer  "price2"
    t.integer  "price3"
    t.string   "boarding_area"
    t.integer  "boat_company_id"
    t.boolean  "hostess"
    t.boolean  "toilet"
    t.boolean  "bar"
    t.boolean  "music"
    t.boolean  "heating"
    t.boolean  "environment"
    t.boolean  "power"
    t.boolean  "windows"
    t.boolean  "wheelchair"
    t.boolean  "balcony"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "similar_boats", :id => false, :force => true do |t|
    t.integer "boat_id"
    t.integer "similar_boat_id"
  end

end
