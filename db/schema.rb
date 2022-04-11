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

ActiveRecord::Schema.define(version: 2022_04_11_025701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.text "name"
    t.text "position"
    t.text "age"
    t.text "height"
    t.integer "weight"
    t.float "points"
    t.float "rebounds"
    t.float "assists"
    t.float "blocks"
    t.float "steals"
    t.text "college"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nba_team_id"
  end

  create_table "players_teams", id: false, force: :cascade do |t|
    t.integer "player_id"
    t.integer "team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.text "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
