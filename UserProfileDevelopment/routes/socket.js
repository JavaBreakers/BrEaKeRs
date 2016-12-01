
/**
 * Created by Faiqa Jahangir on 11/29/2016.
 */

var express = require('express');
var session = require('express-session');
var router = express.Router();

// const http = require('http');
// var app = http.createServer();
// var io = require('socket.io')(app);

var app = require('express')();
var server = require('http').createServer(app);
var io = require('socket.io')(server);

router.get('/message', function(req, res){

    if(req.session && req.session.username){
    var id = req.session.userid;

        var data = new Object();
        data = req.session.username;

    res.render('message', {userid: id,username: data});
    }

    else {
        res.redirect('/login');
    }

});
// var socketIds=[];
// var sockets=[];
io.on('connection', function(socket){
    // socketIds.push(socket.id);

    socket.on('chatmsg', function(msg){
        console.log('message: ' + msg);
        socket.emit("chatmsg",msg);
        // socket=sockets[id];
    });

    socket.on('disconnect', function(){
        //console.log('user disconnected');
        //loop match id and remove from aray
    });
});


server.listen('3060', function(){
    console.log('listening on *:3060');
});

module.exports = router;