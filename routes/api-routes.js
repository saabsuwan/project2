var db = require("../models");

var associations = [
    {activity: "zumba",
    genres: ["Latin", "Dancehall", "Salse", "Merengue"]},

    {activity: "running (outdoor)",
    genres: ["Progressive Rock", "Hip Hop", "Dance-Eletronic", "Pop"]},

    {activity: "running (treadmill)",
    genres: ["Heavy Rock", "Upbeat Pop", "Folk & Acoustic", "Indie Pop"]},

    {activity: "stairmaster",
    genres: ["Heavy Rock", "Upbeat Pop", "Folk & Acoustic", "Indie Pop"]},

    {activity: "HIIT",
    genres: ["Electronic", "Rock", "Pop", "Hip Hop"]},

    {activity: "weight lifting",
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
        // will put a for loop here
        // it will loop through the entire assocations array
        // will compare received activity to each association object's activity
        // if received activity is the same as the current object's activity, I will have a 'var genreList' that will be made equal to the object's genres array
        // and that will be what I use for the 'op.or' thing to find stuff in the database

        db.Song.findAll({order: seqeulize.random(), limit: 10, where: {genre: {[Op.or]: ["Rock", "Electronic", "Upbeat Pop"]}}}).then(function(playlist) {
            console.log(playlist);
        })
    })
};