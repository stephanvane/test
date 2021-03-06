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

ActiveRecord::Schema.define(:version => 20110214224017) do

  create_table "admins", :force => true do |t|
    t.string   "email",                              :default => "", :null => false
    t.string   "encrypted_password",  :limit => 128, :default => "", :null => false
    t.string   "password_salt",                      :default => "", :null => false
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true

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
    t.string   "banner"
  end

  create_table "boats_packages", :id => false, :force => true do |t|
    t.integer "boat_id"
    t.integer "package_id"
  end

  create_table "package_translations", :force => true do |t|
    t.integer  "package_id"
    t.string   "locale"
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "package_translations", ["package_id"], :name => "index_package_translations_on_package_id"

  create_table "packages", :force => true do |t|
    t.integer  "min_persons"
    t.integer  "max_persons"
    t.float    "duration"
    t.decimal  "price"
    t.string   "boarding_area"
    t.boolean  "active",         :default => true
    t.decimal  "discount_price"
    t.integer  "order",          :default => 50
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "banner"
  end

  create_table "photos", :force => true do |t|
    t.integer "item_id"
    t.string  "item_type"
    t.string  "file"
  end

  create_table "requests", :force => true do |t|
    t.integer  "requested_id"
    t.string   "requested_type"
    t.date     "date"
    t.time     "start"
    t.time     "end"
    t.integer  "persons"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.text     "message"
    t.boolean  "available"
    t.string   "random"
    t.boolean  "feedback_mail_send"
    t.string   "locale"
    t.integer  "price"
    t.boolean  "client_rented"
    t.boolean  "boat_company_rented"
    t.boolean  "similar_boats"
    t.boolean  "reminder_send"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "similar_boats", :id => false, :force => true do |t|
    t.integer "boat_id"
    t.integer "similar_boat_id"
  end

end
