var express = require('express');
var router = express.Router();


router.post('/signup', function (req, res, next) {

    req.getConnection(function (err, connection) {

        var query = "INSERT into user (user_name, user_password, user_email, user_createdon) values ('" + req.body.firstName
            + " " + req.body.lastName + "','" + req.body.password + "','" + req.body.email + "',NOW())";


        connection.query(query, function (err, rows) {

            if (err){
                console.log("Error Selecting : %s ", err);
            }else{
                console.log("setting up user session");
                req.session.username = "" + req.body.firstName;
            }

            //res.render('customers', {page_title: "Customers - Node.js", data: rows});

        });

    });
    res.redirect('/');
});

module.exports = router;
