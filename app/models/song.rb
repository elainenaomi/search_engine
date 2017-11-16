class Song < ApplicationRecord
	searchable do
		text :title, stored: true
		text :artist,  stored: true
		text :lyrics,  stored: true
		string :genre, multiple: true do
		  genre.split(',')
		end

		integer :year, stored: true
  end
end
