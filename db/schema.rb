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

ActiveRecord::Schema.define(:version => 20120903125428) do

  create_table "accounts", :force => true do |t|
    t.string   "email",                                :default => "",    :null => false
    t.string   "encrypted_password",                   :default => ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                                              :null => false
    t.datetime "updated_at",                                              :null => false
    t.string   "invitation_token",       :limit => 60
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.boolean  "admin",                                :default => false
  end

  add_index "accounts", ["confirmation_token"], :name => "index_accounts_on_confirmation_token", :unique => true
  add_index "accounts", ["email"], :name => "index_accounts_on_email", :unique => true
  add_index "accounts", ["reset_password_token"], :name => "index_accounts_on_reset_password_token", :unique => true

  create_table "cards", :force => true do |t|
    t.string   "phone"
    t.string   "general_email_address"
    t.string   "website_url"
    t.string   "twitter_username"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "cardable_id"
    t.string   "cardable_type"
  end

  add_index "cards", ["cardable_id", "cardable_type"], :name => "index_cards_on_cardable_id_and_cardable_type"

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.integer  "founded_in"
    t.integer  "number_of_employees"
    t.string   "kvk_number"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "companies_people", :id => false, :force => true do |t|
    t.integer  "company_id"
    t.integer  "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "initiatives", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "initiatives_people", :id => false, :force => true do |t|
    t.integer  "initiative_id"
    t.integer  "person_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "jobs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "company_id"
  end

  create_table "locations", :force => true do |t|
    t.string   "street_address"
    t.string   "extended_address"
    t.string   "postal_code"
    t.string   "city"
    t.string   "locality"
    t.string   "region"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "locatable_id"
    t.string   "locatable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "locations", ["locatable_id", "locatable_type"], :name => "index_locations_on_locatable_id_and_locatable_type"

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "headline"
    t.string   "specialities"
    t.date     "birthdate"
    t.text     "biography"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "website_url"
    t.date     "market_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "productable_id"
    t.string   "productable_type"
  end

  add_index "products", ["productable_id", "productable_type"], :name => "index_products_on_productable_id_and_productable_type"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  add_foreign_key "companies_people", "companies", :name => "companies_people_company_id_fk"
  add_foreign_key "companies_people", "people", :name => "companies_people_person_id_fk"

  add_foreign_key "initiatives_people", "initiatives", :name => "initiatives_people_initiative_id_fk"
  add_foreign_key "initiatives_people", "people", :name => "initiatives_people_person_id_fk"

  add_foreign_key "jobs", "companies", :name => "jobs_company_id_fk"

end
