# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

sudo apt-get install software-properties-common

sudo apt-key adv --recv-keys -keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db 

sudo add-apt-repository 'deb http://ftp.osuosl.org/pub/mariadb/repo/10.2/ubuntu xenial main'

sudo apt-get update

sudo apt-get install mariadb-server


rails new search_engine -d mysql

rake db:create

rails generate sunspot_rails:install

bundle exec rails g model Song title:string artist:string genre:string lyrics:text year:integer

rails console

require '/home/naomi/dev/search_engine/lib/tasks/populate_songs.rb'

populate_songs

Sunspot.index! Song.all

# text fields will be full-text searchable. Other fields (e.g., integer and string) can be used to scope queries.

