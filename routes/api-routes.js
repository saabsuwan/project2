var db = require("../models");

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
        var reqActivity = req.body;

        for(i = 0; i < associations.length; i++) {
            if (associations[i].activity == reqActivity) {
                var musicGenres = associations[i].genres;
            }
        }

        db.Song.findAll({order: seqeulize.random(), limit: 10, where: {genre: {[Op.or]: musicGenres}}}).then(function(playlist) {
            res.json(playlist);
        })
    })
};