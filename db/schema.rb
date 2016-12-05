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

ActiveRecord::Schema.define(version: 20161205130829) do

  create_table "matches", force: :cascade do |t|
    t.string   "teamA"
    t.string   "teamB"
    t.integer  "teamAScore"
    t.integer  "teamBScore"
    t.date     "date"
    t.string   "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches_teams", id: false, force: :cascade do |t|
    t.integer "team_id",  null: false
    t.integer "match_id", null: false
    t.index ["match_id", "team_id"], name: "index_matches_teams_on_match_id_and_team_id"
    t.index ["team_id", "match_id"], name: "index_matches_teams_on_team_id_and_match_id"
  end

  create_table "players", force: :cascade do |t|
    t.string  "name"
    t.integer "rating"
    t.string  "info"
    t.integer "team_id"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "rank"
  end

end
