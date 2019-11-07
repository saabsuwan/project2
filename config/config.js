//You need to create a .env and put it in the root of your project 
//Make sure you add the .env to your .gitignore!
require("dotenv").config();
​
//Create an object that loads in the info from the environment variables in .env
const config = {
    development: {
        username: "root",
        password: process.env.DB_LOCAL_PASSWORD,
        database: "playlist_db",
        host: "localhost",
        dialect: "mysql"
    },
    //Note: this is a spoiler for how to configure for Heroku ;)
    production: {
        use_env_variable: "JAWSDB_URL",
        dialect: "mysql"
    }
};
​
//Lastly, export that config object
module.exports = config;