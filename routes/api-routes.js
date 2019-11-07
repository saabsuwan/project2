var db = require("../models");

var associations = [
    {activity: "zumba",
    genres: ["Latin", "Dancehall", "Salse", "Merengue"]},

    {activity: "running (outdoor)",
    genres: ["Progressive Rock", "Hip Hop", "Dance-Eletronic", "Pop"]},

    {activity: "running (treadmill)",
    genres: ["Heavy rock", "Upbeat Pop", "Folk & Acoustic", "Indie Pop"]},

    {activity: "stairmaster",
    genres: ["Heavy rock", "Upbeat Pop", "Folk & Acoustic", "Indie Pop"]},

    {activity: "HIIT",
    genres: ["Electronic", "Rock", "Pop", "Hip Hop"]},

    {activity: "weight lifting",
    genres: ["Metal", "Heavy Rock", "Indie Pop", "Electronic"]},

    {activity: "yoga",
    genres: [""]},

    {activity: "stretching",
    genres: [""]},

    {activity: "rowing",
    genres: [""]},

    {activity: "biking",
    genres: [""]},

    {activity: "hiking",
    genres: [""]},

    {activity: "aerobics",
    genres: [""]}
]

module.exports = function(app) {
    app.post("/api/music", function(req, res) {
        // based on whatever number value I get from the html activity select thing
        // I'll search for certain genres with sequelize and select randomly from those
        // it's gonna be a findAll with a limit of 10

        db.Song.findAll({order: seqeulize.random(), limit: 10, where: {genre: {[Op.or]: ["Rock", "Electronic", "Upbeat Pop"]}}}).then(function(playlist) {
            console.log(playlist);
        })
    })
};