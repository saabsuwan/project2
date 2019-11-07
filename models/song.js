module.exports = function(sequelize, DataTypes) {
    var Song = sequelize.define("Song", {
        genre: DataTypes.STRING,
        song: DataTypes.STRING,
        artist: DataTypes.STRING
    });
    return Song;
};