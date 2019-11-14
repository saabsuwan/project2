// *********************************************************************************
// Server.js - This file is the initial starting point for the Node/Express server.
// *********************************************************************************

// Dependencies
// =============================================================
var express = require("express");
var path = require("path");
var db = require("./models");

// =============================================================
var app = express();
var PORT = process.env.PORT || 8080;

// Sets up the Express app to handle data parsing
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// Static directory
app.use(express.static("app/public"));

require("./routes/api-routes")(app);
require("./routes/html-routes")(app);

db.sequelize.sync({}).then(function() {
  app.listen(PORT, function() {
    //you could run seeds in here
    console.log("App listening on PORT " + PORT);
  });
});