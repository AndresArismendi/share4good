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

ActiveRecord::Schema.define(version: 20160109012613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "USER", primary_key: "user_id", force: true do |t|
    t.integer "category_id",                null: false
    t.integer "user_age"
    t.string  "user_telephone", limit: 256
    t.string  "user_email",     limit: 256
    t.string  "user_name",      limit: 256
    t.string  "user_last_name", limit: 256
  end

  add_index "USER", ["category_id"], name: "has_category_fk", using: :btree
  add_index "USER", ["user_id"], name: "user_pk", unique: true, using: :btree

  create_table "advertisement_notice", primary_key: "notice_id", force: true do |t|
    t.integer "client_id",                         null: false
    t.string  "notice_title",         limit: 50
    t.date    "notice_starting_date"
    t.string  "notice_image",         limit: 400
    t.string  "notice_information",   limit: 1024
  end

  add_index "advertisement_notice", ["client_id"], name: "published_fk", using: :btree
  add_index "advertisement_notice", ["notice_id"], name: "advertisement_notice_pk", unique: true, using: :btree

  create_table "brand", primary_key: "brand_id", force: true do |t|
    t.string "brand_name", limit: 100
  end

  add_index "brand", ["brand_id"], name: "brand_pk", unique: true, using: :btree

  create_table "categories", force: true do |t|
    t.string   "category_name"
    t.string   "category_from"
    t.string   "categ"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category", primary_key: "category_id", force: true do |t|
    t.string "category_name", limit: 256
    t.string "category_from", limit: 1024
    t.string "category_to",   limit: 1024
  end

  add_index "category", ["category_id"], name: "category_pk", unique: true, using: :btree

  create_table "city", primary_key: "city_id", force: true do |t|
    t.integer "region_id",             null: false
    t.string  "city_name", limit: 256
  end

  add_index "city", ["city_id"], name: "city_pk", unique: true, using: :btree
  add_index "city", ["region_id"], name: "belongs_to_fk", using: :btree

  create_table "client", primary_key: "client_id", force: true do |t|
    t.string "client_name",        limit: 50
    t.string "client_last_name",   limit: 50
    t.string "client_rut",         limit: 20
    t.string "client_phone",       limit: 20
    t.string "client_mail",        limit: 50
    t.string "client_information", limit: 1024
  end

  add_index "client", ["client_id"], name: "client_pk", unique: true, using: :btree

  create_table "colour", primary_key: "colour_id", force: true do |t|
    t.string "colour_name", limit: 100
  end

  add_index "colour", ["colour_id"], name: "colour_pk", unique: true, using: :btree

  create_table "has_vehicle", primary_key: "has_vehicle_id", force: true do |t|
    t.integer "vehiculo_id", null: false
    t.integer "user_id",     null: false
  end

  add_index "has_vehicle", ["has_vehicle_id"], name: "has_vehicle_pk", unique: true, using: :btree
  add_index "has_vehicle", ["user_id"], name: "has_vehicle2_fk", using: :btree
  add_index "has_vehicle", ["vehiculo_id"], name: "has_vehicle_fk", using: :btree

  create_table "log_sql", primary_key: "log_sql_id", force: true do |t|
    t.date   "log_sql_tms"
    t.string "log_sql_table",     limit: 50
    t.string "log_sql_operac",    limit: 50
    t.string "log_sql_user",      limit: 50
    t.string "log_sql_dat_antes", limit: 50
    t.string "log_sql_dat_dsps",  limit: 50
    t.string "log_sql_ope_det",   limit: 100
  end

  add_index "log_sql", ["log_sql_id"], name: "log_sql_pk", unique: true, using: :btree

  create_table "model", primary_key: "model_id", force: true do |t|
    t.string "model_name", limit: 100
  end

  create_table "neighboorhood", primary_key: "neighboorhood_id", force: true do |t|
    t.integer "city_id",                          null: false
    t.string  "neighboorhood_nombre", limit: 256
  end

  add_index "neighboorhood", ["city_id"], name: "it_is_found_in_fk", using: :btree
  add_index "neighboorhood", ["neighboorhood_id"], name: "neighboorhood_pk", unique: true, using: :btree

  create_table "reference", primary_key: "reference_id", force: true do |t|
    t.integer "reference_mark"
    t.string  "reference_comment", limit: 1024
    t.string  "reference_answer",  limit: 1024
    t.date    "reference_date"
  end

  add_index "reference", ["reference_id"], name: "reference_pk", unique: true, using: :btree

  create_table "region", primary_key: "region_id", force: true do |t|
    t.string "region_name", limit: 1024
  end

  add_index "region", ["region_id"], name: "region_pk", unique: true, using: :btree

  create_table "suggestion", primary_key: "suggestion_id", force: true do |t|
    t.integer "user_id",                       null: false
    t.string  "suggestion_texto", limit: 1024
    t.date    "suggestion_fecha"
  end

  add_index "suggestion", ["suggestion_id"], name: "suggestion_pk", unique: true, using: :btree
  add_index "suggestion", ["user_id"], name: "sends_fk", using: :btree

  create_table "trip", primary_key: "trip_id", force: true do |t|
    t.integer "neighboorhood_id",     null: false
    t.integer "nei_neighboorhood_id", null: false
    t.integer "tri_trip_id"
    t.date    "trip_hour"
    t.integer "trip_price"
    t.integer "trip_accomplished"
    t.integer "trip_capacity"
    t.boolean "trip_luggage"
    t.boolean "trip_pet"
    t.boolean "trip_smoker"
  end

  add_index "trip", ["nei_neighboorhood_id"], name: "starts_in_fk", using: :btree
  add_index "trip", ["neighboorhood_id"], name: "goes_to_fk", using: :btree
  add_index "trip", ["tri_trip_id"], name: "it_accomplishes_fk", using: :btree
  add_index "trip", ["trip_id"], name: "trip_pk", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.integer  "category_id"
    t.integer  "user_age"
    t.string   "user_telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["category_id"], name: "index_users_on_category_id", using: :btree

  create_table "usuario_seguro", primary_key: "usuario_seguro_id", force: true do |t|
    t.integer "user_id",                null: false
    t.integer "usuario_seguro_enabled"
    t.date    "usuario_seguro_date"
  end

  add_index "usuario_seguro", ["user_id"], name: "can_be_fk", using: :btree
  add_index "usuario_seguro", ["usuario_seguro_id"], name: "usuario_seguro_pk", unique: true, using: :btree

  create_table "vehicle", primary_key: "vehiculo_id", force: true do |t|
    t.integer "colour_id",                       null: false
    t.integer "brand_id",                        null: false
    t.string  "vehicle_number_plate", limit: 50
  end

  add_index "vehicle", ["brand_id"], name: "has_brand_fk", using: :btree
  add_index "vehicle", ["colour_id"], name: "has_colour_fk", using: :btree
  add_index "vehicle", ["vehiculo_id"], name: "vehicle_pk", unique: true, using: :btree

  create_table "writes_a_reference", primary_key: "write_id", force: true do |t|
    t.integer "user_id",      null: false
    t.integer "trip_id",      null: false
    t.integer "reference_id", null: false
    t.boolean "is_driver"
  end

  add_index "writes_a_reference", ["reference_id"], name: "writes_a_reference_fk", using: :btree
  add_index "writes_a_reference", ["trip_id"], name: "writes_a_reference3_fk", using: :btree
  add_index "writes_a_reference", ["user_id"], name: "writes_a_reference2_fk", using: :btree
  add_index "writes_a_reference", ["write_id"], name: "writes_a_reference_pk", unique: true, using: :btree

end
