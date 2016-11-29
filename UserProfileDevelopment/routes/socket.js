
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

router.get('/socket', function(req, res){

    res.render('chat');

});

io.on('connection', function(socket){
    socket.on('chatmsg', function(msg){
        console.log('message: ' + msg);
    });

});

server.listen('3060', function(){
    console.log('listening on *:3060');
});

module.exports = router;