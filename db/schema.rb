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

ActiveRecord::Schema.define(version: 20200521024121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fish", force: :cascade do |t|
    t.string "name"
    t.integer "sell_value_cents", default: 0, null: false
    t.string "sell_value_currency", default: "USD", null: false
    t.string "location"
    t.string "active_hours"
    t.string "active_months"
    t.string "shadow_size"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
