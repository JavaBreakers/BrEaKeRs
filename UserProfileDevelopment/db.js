
var mysql = require('mysql');

var db;

var settings = ({
    host: "127.0.0.1",
    database: "breakers",
    user: "root",
    password: ""
});

/**************database connection****************/
function connectDatabase() {
    if (!db) {
        db = mysql.createConnection(settings);

        db.connect(function(err){

            if(!err) {
                console.log('Database is connected!');
            } else {
                console.log('Error connecting database!');
            }
        });
    }

    return db;
}

module.exports = connectDatabase();
/*****database connection end*****/