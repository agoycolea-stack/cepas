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

ActiveRecord::Schema.define(version: 2020_10_28_235825) do

  create_table "assemblies", force: :cascade do |t|
    t.float "percentage"
    t.integer "wine_id"
    t.integer "strain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["strain_id"], name: "index_assemblies_on_strain_id"
    t.index ["wine_id"], name: "index_assemblies_on_wine_id"
  end

  create_table "enologists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.integer "score"
    t.integer "wine_id"
    t.integer "enologist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enologist_id"], name: "index_grades_on_enologist_id"
    t.index ["wine_id"], name: "index_grades_on_wine_id"
  end

  create_table "magazines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.integer "enologist_id"
    t.integer "magazine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enologist_id"], name: "index_positions_on_enologist_id"
    t.index ["magazine_id"], name: "index_positions_on_magazine_id"
  end

  create_table "strains", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strains_wines", id: false, force: :cascade do |t|
    t.integer "wine_id", null: false
    t.integer "strain_id", null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
