var db = require("../models");
var Sequelize = require("sequelize");
var sequelize = require("../config/config.js");

var associations = [
    {activity: "zumba",
    genres: ["Latin", "Dancehall", "Salse", "Merengue"]},

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
]

module.exports = function(app) {
    app.post("/api/music", function(req, res) {
        console.log(req.body);
        var reqActivity = req.body.activity;
        console.log(reqActivity);

        for(i = 0; i < associations.length; i++) {
            // console.log("Hello!");
            if (associations[i].activity == reqActivity) {
                // console.log("Hi there!");
                var musicGenres = associations[i].genres;
                console.log(musicGenres);
            }
        }
        // order: Sequelize.fn("RAND"), limit: 10, 

        db.Song.findAll({where: {genre_name: {[Sequelize.Op.or]: musicGenres}}}).then(function(playlist) {
            console.log(playlist);
            // res.json(playlist);
        });
    })
};