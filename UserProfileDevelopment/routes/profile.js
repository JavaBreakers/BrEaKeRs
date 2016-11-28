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
        var data = new Object();
        console.log(req.session.username);
        if (req.session.username) {
            data.username = req.session.username;
        }
        res.render('profile', data);
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



module.exports = router;