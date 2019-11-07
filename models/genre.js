module.exports = function(sequelize, DataTypes) {
    var genre = sequelize.define("Genre", {
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
    return genre;
};