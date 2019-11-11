module.exports = function(sequelize, DataTypes) {
    var Song = sequelize.define("Song", {
        genre_name: {
            type: DataTypes.STRING,
            allowNull: false
        },
        song: {
            type: DataTypes.STRING,
            allowNull: false
        },
        artist: {
            type: DataTypes.STRING,
            allowNull: false
        }
    });

    return Song;
}
