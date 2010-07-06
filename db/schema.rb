# This file is auto-generated from the current state of the database. Instead of editing this file,
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100707051325) do

  create_table "donor_organizations", :force => true do |t|
    t.string "name"
  end

  create_table "donors", :force => true do |t|
    t.string  "name"
    t.boolean "admin",                 :default => false
    t.integer "donor_organization_id"
  end

  create_table "wish_lists", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "donor_organization_id"
  end

  add_index "wish_lists", ["donor_organization_id"], :name => "index_wish_lists_on_donor_organization_id"

  create_table "wishes", :force => true do |t|
    t.string  "description"
    t.integer "donor_organization_id"
    t.integer "requestor_organization_id"
    t.integer "wish_list_id"
    t.string  "name"
    t.integer "age"
    t.string  "sex"
    t.string  "gift_1"
    t.date    "gift_1_delivered_on"
    t.string  "gift_1_thank_you_to"
    t.string  "gift_2"
    t.date    "gift_2_delivered_on"
    t.string  "gift_2_thank_you_to"
    t.text    "notes"
  end

  add_index "wishes", ["wish_list_id"], :name => "index_wishes_on_wish_list_id"

end
