var express = require('express');
http = require('http');
var app = express();
var server = require('http').createServer();
var io = require('socket.io')(server);

var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

io.on('connection', function(socket){
    console.log('a user connected');
});

server.listen(3060, function(){
    console.log('listening on *:3060');
});

module.exports = router;
