gmaps
=====

It will locate all the store locations near you for the website you would visit, will be a widget kind of thing so that website owner can integrate it on their website

Right now it's a rails application

Create a database.yml  file in your config directory, using mysql, postgres, sqlite etc
Run bundle install
Run the migration
Start the server and there you go

Start adding the store locations in the database and see them on map

Right now google maps API key is mine, you need to replace it with your own key in app/views/stores/_show-maps.html.erb file.

Once this becomes the full featured google maps application the functionality would be extracted to gem to make it available to all

Creator - Naveen Agarwal

