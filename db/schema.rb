# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_28_141612) do

  create_table "ingredients", force: :cascade do |t|
    t.integer "price_U"
    t.string "conditionnng"
    t.integer "quantity"
    t.integer "quantity_unit"
    t.string "row_shop"
    t.integer "season_id", null: false
    t.integer "TOTAL_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["season_id"], name: "index_ingredients_on_season_id"
  end

  create_table "list_ingredients", force: :cascade do |t|
    t.integer "ingredient_id", null: false
    t.integer "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_list_ingredients_on_ingredient_id"
    t.index ["recipe_id"], name: "index_list_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "menu_spot"
    t.string "wine"
    t.integer "quantity_serving"
    t.integer "time_cooking"
    t.integer "time_prep"
    t.integer "time_plating"
    t.integer "time_marinade"
    t.integer "price_waiting"
    t.integer "price_serving"
    t.integer "price_work"
    t.string "TOTAL_time"
    t.integer "TOTAL_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ingredients", "seasons"
  add_foreign_key "list_ingredients", "ingredients"
  add_foreign_key "list_ingredients", "recipes"
end
