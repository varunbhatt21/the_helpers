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

ActiveRecord::Schema.define(version: 20170817160959) do

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "first_name", limit: 25
    t.string "last_name", limit: 50
    t.string "email", limit: 100, default: "", null: false
    t.string "username", limit: 25
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["username"], name: "index_admin_users_on_username"
  end

  create_table "admin_users_helper_lists", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "admin_user_id"
    t.integer "helper_list_id"
  end

  create_table "admin_users_lists", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "admin_user_id"
    t.integer "helper_list_id"
    t.index ["admin_user_id", "helper_list_id"], name: "index_admin_users_lists_on_admin_user_id_and_helper_list_id"
  end

  create_table "helper_lists", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "helper_table_id"
    t.string "first_name", limit: 25
    t.string "last_name", limit: 50
    t.integer "position"
    t.float "rating", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["helper_table_id"], name: "index_helper_lists_on_helper_table_id"
  end

  create_table "helper_requests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 50
    t.string "service", limit: 50
    t.string "string", limit: 50
    t.string "email", default: "", null: false
    t.string "address", limit: 300
    t.date "date"
    t.string "helper"
    t.string "mobile", limit: 12
    t.string "time", limit: 50
    t.string "Status"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "helper_tables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.integer "position"
    t.integer "counter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "list_edits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "admin_user_id"
    t.bigint "helper_list_id"
    t.string "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_user_id", "helper_list_id"], name: "index_list_edits_on_admin_user_id_and_helper_list_id"
    t.index ["admin_user_id"], name: "index_list_edits_on_admin_user_id"
    t.index ["helper_list_id"], name: "index_list_edits_on_helper_list_id"
  end

  create_table "sendmailers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "email"
    t.date "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end