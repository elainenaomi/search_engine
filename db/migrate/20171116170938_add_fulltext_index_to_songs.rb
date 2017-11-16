class AddFulltextIndexToSongs < ActiveRecord::Migration[5.1]
  def change
  	add_index :songs, :artist, type: :fulltext
  	add_index :songs, :title, type: :fulltext
  	add_index :songs, :lyrics, type: :fulltext
  	add_index :songs, :genre, type: :fulltext
  	add_index :songs, [:artist, :title, :lyrics, :genre], type: :fulltext
  end
end
