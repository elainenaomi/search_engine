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

ActiveRecord::Schema.define(version: 20171116170938) do

  create_table "songs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "artist"
    t.string "genre"
    t.text "lyrics"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist", "title", "lyrics", "genre"], name: "index_songs_on_artist_and_title_and_lyrics_and_genre", type: :fulltext
    t.index ["artist"], name: "index_songs_on_artist", type: :fulltext
    t.index ["genre"], name: "index_songs_on_genre", type: :fulltext
    t.index ["lyrics"], name: "index_songs_on_lyrics", type: :fulltext
    t.index ["title"], name: "index_songs_on_title", type: :fulltext
  end

end
