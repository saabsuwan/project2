var path = require("path");

// Routes
// =============================================================
module.exports = function(app) {
    // index route loads view.html
    app.get("/", function(req, res) {
        // res.sendFile(path.join(__dirname, "this is where the link to the primary html page will go"));
    });
};