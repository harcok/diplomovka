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

ActiveRecord::Schema.define(:version => 20090502175551) do

  create_table "order_items", :force => true do |t|
    t.integer  "product_id",                                 :null => false
    t.integer  "order_id",                                   :null => false
    t.integer  "mnozstvo",                                   :null => false
    t.decimal  "celkova_cena", :precision => 8, :scale => 2, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_items", ["product_id"], :name => "fk_order_items_orders"
  add_index "order_items", ["order_id"], :name => "fk_order_items_products"

  create_table "orders", :force => true do |t|
    t.string   "meno"
    t.text     "adresa"
    t.string   "email"
    t.string   "typ_platenia", :limit => 10
    t.float    "celkova_cena"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "nazov"
    t.text     "popis"
    t.string   "obrazok_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "cena",        :precision => 8, :scale => 2, :default => 0.0
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "meno"
    t.string   "hashovane_heslo"
    t.string   "sol"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
