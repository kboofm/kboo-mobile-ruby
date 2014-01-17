# KBOO FM Mobile Player

### To Run:

- Rails 4.0 Ruby 2.0

- bundle exec rake db:create && rake db:schema:load && rake db:seed

- bundle exec rake fetch_on_air_programs

- bundle exec rake highlighted_programs

- bundle exec rake schedules

- rails s

- admin login: admin@kboo.org , 12345678

You will now have a functional admin interface, a player on the frontend, a list of highlighted shows, schedule data, and a player that allows you to listen to live KBOO! 

### TODO

- Fix frontend player display issues (not generic player, play button/pause button image)

- Finish Program Schedules Scrape to properly display times (program times are saving and tests passing, UI issues)

- Link with KBOO API to get podcast links

- Package with PhoneGap/Cordova as iOS/Android app
