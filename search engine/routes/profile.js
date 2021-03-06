/**
 * Created by Faiqa Jahangir on 11/28/2016.
 */
var express = require('express');
var session = require('express-session');
var app = express();

var flash = require('connect-flash');

var router = express.Router();


router.get('/profile', function (req, res, next) {


    if(req.session && req.session.username){

        var id = req.session.userid;
        var data = new Object();
        data = req.session.username;

        req.getConnection(function (err, connection) {

            var query = "SELECT * FROM user WHERE user_id = '" + id + "'";

            connection.query(query, function (err, rows) {

                if (err)

                    console.log("Error Selecting : %s ", err);

                    req.session.success = '0';

                    res.render('profile', {username: data, rows: rows});

            });

        });
}

  else {
        res.redirect('/login');
    }


});

router.get('/inbox', function (req, res, next) {

    if(req.session && req.session.username){

        var id = req.session.userid;
        var data = new Object();
        data = req.session.username;

        req.getConnection(function (err, connection) {

            var query = "SELECT * FROM messages m JOIN user u ON m.messages_from = u.user_id WHERE messages_to = '"+ id +"' GROUP BY messages_from ";

            connection.query(query, function (err, rows) {

                if (err)

                    console.log("Error Selecting : %s ", err);

                res.render('inbox', {username: data, data: rows});

            });

        });
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

        var id = req.session.userid;



        req.getConnection(function (err, connection) {

            var query = "SELECT * FROM orders WHERE orders_user_add = '" + id + "'";

            connection.query(query, function (err, rows) {

                if (err)

                    console.log("Error Selecting : %s ", err);

                var uname = new Object();
                uname = req.session.username;

                var data=[];

                res.render('orderhistory', {username: uname, data: rows});

            });

        });
    }

    else {
        res.redirect('/login');
    }
});

router.post('/updateprofile', function (req, res, next) {

    req.getConnection(function (err, connection) {

        var id = req.session.userid;

        var data = {

            user_name    : req.body.name,
            user_address : req.body.address,
            user_phone   : req.body.phone,
            user_email   : req.body.email,
            user_type    : req.body.type

        };

        connection.query("UPDATE user set ? WHERE user_id = ? ",[data,id], function(err, rows)
        {
            // var msg = "1";

            if (err)
                console.log("Error Updating : %s ",err );

            req.session.success = '1';
            res.redirect('/profile');

        });

    });

});

router.post('/savepassword', function (req, res, next) {

    req.getConnection(function (err, connection) {

        var id = req.session.userid;

        var data = {

            user_password   : req.body.password

        };

        connection.query("UPDATE user set ? WHERE user_id = ? ",[data,id], function(err, rows)
        {

            if (err)
                console.log("Error Updating : %s ",err );

            res.redirect('/settings');

        });

    });

});



module.exports = router;