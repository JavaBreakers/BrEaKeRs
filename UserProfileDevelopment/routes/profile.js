/**
 * Created by Faiqa Jahangir on 11/28/2016.
 */
var express = require('express');
var session = require('express-session');
var app = express();

var router = express.Router();
var sess;

router.get('/profile', function (req, res, next) {


    if(req.session && req.session.username){

        var id = req.session.userid;

        req.getConnection(function (err, connection) {

            var query = "SELECT * FROM user WHERE user_id = '" + id + "'";

            connection.query(query, function (err, rows) {

                if (err)
                    console.log("Error Selecting : %s ", err);

                    res.render('profile', {page_title: "User Profile", data: JSON.stringify(rows)});

            });

        });
}

  else {
        res.redirect('/login');
    }


});

router.get('/inbox', function (req, res, next) {

    if(req.session && req.session.username){
    var data = new Object();
    console.log(req.session.username);
    if (req.session.username) {
        data.username = req.session.username;
    }
    res.render('inbox', data);
}
else {
    res.redirect('/login');
}


});

router.get('/settings', function (req, res, next) {

    if(req.session && req.session.username){
        var data = new Object();
        console.log(req.session.username);
        if (req.session.username) {
            data.username = req.session.username;
        }
        res.render('settings', data);
    }
    else {
        res.redirect('/login');
    }


});

router.get('/orderhistory', function (req, res, next) {

    if(req.session && req.session.username){
        var data = new Object();
        console.log(req.session.username);
        if (req.session.username) {
            data.username = req.session.username;
        }
        res.render('orderhistory', data);
    }
    else {
        res.redirect('/login');
    }


});

// router.post('/updateprofile', function (req, res, next) {
//
//     req.getConnection(function (err, connection) {
//
//         var query = "'UPDATE  user SET ? WHERE user_id = 2' { user_name: " + req.body.name
//             + ", user_email: " + req.body.email + "', user_address:'" + req.body.address + "', user_type'" + req.body.type + "}";
//
//
//         connection.query(query, function (err, rows) {
//
//             if (err){
//                 console.log("Error Selecting : %s ", err);
//             }else{
//                 console.log("setting up user session");
//                 req.session.username = "" + req.body.firstName;
//             }
//
//             //res.render('customers', {page_title: "Customers - Node.js", data: rows});
//
//         });
//
//     });
//     res.redirect('/');
// });



module.exports = router;