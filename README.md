# KBOO FM Mobile Player

### To set up:

- Have a Postgres server running
- Configure database.yml appropriately
- Install Ruby 2.0
- Install gems with `bundle install`
- Run `rake db:create && rake db:schema:load && rake db:seed` to set up the database


### To Run:

- `rake fetch_on_air_programs`, `rake highlighted_programs`, `rake schedules` should be run regularly to keep the content up to date.
- Start the server with `rails s`
- The seed includes an admin login: admin@kboo.org, 12345678. Change the password, please!

You will now have a functional admin interface, a player on the frontend, a list of highlighted shows, schedule data, and a player that allows you to listen to live KBOO! 

### TODO

- Fix frontend player display issues (not generic player, play button/pause button image)
- Finish Program Schedules Scrape to properly display times (program times are saving and tests passing, UI issues)
- Link with KBOO API to get podcast links
- Package with PhoneGap/Cordova as iOS/Android app
