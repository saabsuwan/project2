## GYM Beats

## Overview

App that lets you select your fitness activity from a list of 12, and returns a playlist of 10 songs from a SQL database for that particular activity.

## Installation

Using Git Bash or Terminal, clone the code on to your computer using `git clone https://github.com/saabsuwan/project2.git`. Following that, navigate to the folder the code is in and type `npm install` into the command line. After that, make a .env file and put 
"DB_USER_LOCAL=root
DB_PASSWORD_LOCAL=(your SQL password here)
DB_DATABASE_LOCAL=playlist_db
DB_HOST_LOCAL=localhost
DB_USER_TEST=root
DB_PASSWORD_TEST=(your SQL password here)
DB_DATABASE_TEST=playlist_db
DB_HOST_TEST=localhost"

Next, type `node server.js` to start the server. Then, open the seeds.sql file in MySQL and run it to populate the now-existing database, stop the server running, and start it again. With that, the website should be ready to go, so open up "http://localhost:8080".

## Usage

When the webpage loads you will see the following screen:
![use case 1](https://i.imgur.com/VlPSOI6.jpg)

You can select your fitness activity from one of twelve in the dropdown box to the left of the screen. After you select the activity, a playlist of 10 songs will appear.
![use case 2](https://i.imgur.com/pugrgnP.jpg)

## Links

App link:

## Technology Used

- Sequelize
- mysql2
- Express
- dotenv
- Jquery
- HTML
- Bootstrap
- SASS

## Future Features

A list of features we'd like to add in the future:
- Spotify API to load links to the songs you get in your playlist
- a display of the genres we've associated with your chosen activity, and the option to exclude certain genres from the generated playlist if you really dislike one of those genres
- attempt to use the Sequelize random function, because our current setup really only works as long as the database is relatively small
- make the playlist on the page clear out if the person goes back to the default option in the list