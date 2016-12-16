var http = require('http'),
    fs = require('fs'),
    url = require('url'),
    choices = ["hello world", "goodbye world"];

var db = require('../db');

http.createServer(function(request, response){
    var path = url.parse(request.url).pathname;
    var url_parts = url.parse(request.url, true);
    var query = url_parts.query;
    console.log(query);

    var qrry ="UPDATE `products` SET `products_name` = '"+query.products_name+"', `products_catagory` = '"+query.products_catagory+"', `products_size` = '"+query.products_size+"', `products_colour` = '"+query.products_colour+"', `products_price` = '"+query.products_price+"', `products_vendor` = '"+query.products_vendor+"'  WHERE `products`.`products_id` = "+query.pid;
    console.log(qrry);
    var img =     db.query(qrry, function(err,res){
        if(err)
            throw err;


    });






}).listen(8009);
