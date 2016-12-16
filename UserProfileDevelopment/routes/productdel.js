var http = require('http'),
    fs = require('fs'),
    url = require('url'),
    choices = ["hello world", "goodbye world"];

var db = require('../db');

http.createServer(function(request, response){
    var path = url.parse(request.url).pathname;
    var url_parts = url.parse(request.url, true);
    var query = url_parts.query;

    var delid        = query.prod_id;
    // delid = q;
    var qrry ="delete from `products` where `products_id` = "+delid;
    var img =     db.query(qrry, function(err,res){
        if(err)
            throw err;

        console.log( " deleted");

    });






}).listen(8007);
