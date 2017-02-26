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

ActiveRecord::Schema.define(version: 20170226012211) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "middle"
    t.string "large"
    t.index ["large"], name: "index_categories_on_large", using: :btree
    t.index ["middle"], name: "index_categories_on_middle", using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "tab"
    t.integer "favorite_count"
    t.string  "middle_category_name"
    t.index ["middle_category_name"], name: "index_products_on_middle_category_name", using: :btree
  end

  create_table "purchase_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "product_id"
    t.integer "user_id"
    t.date    "shipping_completion_date"
    t.index ["product_id"], name: "index_purchase_logs_on_product_id", using: :btree
    t.index ["user_id"], name: "index_purchase_logs_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "gender"
    t.string "age"
  end

  add_foreign_key "purchase_logs", "products"
  add_foreign_key "purchase_logs", "users"
end
