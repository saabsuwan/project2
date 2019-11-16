// require models and sequelize
var db = require("../models");
var Sequelize = require("sequelize");
var sequelize = require("../config/config.js");

// associations, to associate a particular activity with certain music genres
// I did this to avoid having to deal with a bunch of if-else statements
var associations = [
  {activity: "zumba",
  genres: ["Latin", "Dancehall", "Salsa", "Merengue"]},

  {activity: "running1",
  genres: ["Progressive Rock", "Hip Hop", "Dance-Eletronic", "Pop"]},

  {activity: "running2",
  genres: ["Heavy Rock", "Upbeat Pop", "Folk & Acoustic", "Indie Pop"]},

  {activity: "stairmaster",
  genres: ["Heavy Rock", "Upbeat Pop", "Folk & Acoustic", "Indie Pop"]},

  {activity: "HIIT",
  genres: ["Electronic", "Rock", "Pop", "Hip Hop"]},

  {activity: "weightlifting",
  genres: ["Metal", "Heavy Rock", "Indie Pop", "Electronic"]},

  {activity: "yoga",
  genres: ["Mellow", "R&B", "Trip-Hop", "Chill"]},

  {activity: "stretching",
  genres: ["Mellow", "R&B", "Trip-Hop", "Chill"]},

  {activity: "rowing",
  genres: ["Metal", "Pop", "Hip-Hop", "Heavy Rock"]},

  {activity: "biking",
  genres: ["Electronic", "Pop", "Punk", "Reggae"]},

  {activity: "hiking",
  genres: ["Punk", "World Music", "Rock", "Reggae"]},

  {activity: "aerobics",
  genres: ["Pop", "Hip-Hop", "Dance-Electronic", "Latin"]}
];

// export app so the post route makes it to the server
module.exports = function(app) {
  app.post("/api/music", function(req, res) {
    // console.log(req.body); commented out, used for testing

    // get the activity from the html
    var reqActivity = req.body.activity;
    // console.log(reqActivity); commented out, used for testing

    // loop through the associations array until I find the object that matches the selected activity
    for (i = 0; i < associations.length; i++) {
      // console.log("Hello!"); commented out, used for testing
      if (associations[i].activity == reqActivity) {
        // console.log("Hi there!"); commented out, used for testing

        // get the music genres associated with the activity
        var musicGenres = associations[i].genres;
        // console.log(musicGenres); commented out, used for testing
      }
    }

    // find all the songs of the selected genres in our SQL database
    db.Song.findAll({where: {genre_name: {[Sequelize.Op.or]: musicGenres}} }).then(function(playlist) {
      // console.log(playlist);
      var list = [];

      // this returns a randomized list of 10 from the songs found in the database
      for (var i = 0; i < 10; i++) {
        var num = Math.floor(Math.random() * playlist.length);
        list.push(playlist[num]);
        // console.log(list); commented out, used for testing
      }
      res.json(list);
    });
  });
};
