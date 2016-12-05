
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

var uid;

router.get('/message', function(req, res){

    uid = req.session.userid;
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

var clients =[];

io.on('connection', function(socket){

    // socketIds.push(socket.id);

    clients.push({
        userid : uid,
        usersocketid: socket.id
    });

    // clients = {socket: socket.id};
    console.log(clients);

    // socket.on('chatmsg', function(msg){
    //
    //     socket.emit('chatmsg', msg);
    //     console.log('message: ' + msg +  socket.id);
    // });

    socket.on('chatmsg', function(id,msg){

        // alert(msg);
    //
        for(var i = 0, len = clients.length; i < len; i++) {
            if( clients[ i ].userid === id )

                socket.emit("chatmsg",msg);
            socket.to(clients[ i ].usersocketid).emit("chatmsg",msg);
            console.log('message: ' + msg);
        }

        // console.log(id);
        // console.log(msg);
        // socket.emit("chatmsg",msg);
        // socket.to(1).emit("chatmsg",msg);
        // console.log('message: ' + msg);
    //     // socket.emit("chatmsg",msg);
    //     // socket=sockets[id];
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