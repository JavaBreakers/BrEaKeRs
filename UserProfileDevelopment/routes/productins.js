var http = require('http'),
    fs = require('fs'),
    url = require('url'),
    choices = ["hello world", "goodbye world"];

var db = require('../db');
// var dbs = require('./config/cn');

http.createServer(function(request, response){


    var path = url.parse(request.url).pathname;
    var url_parts = url.parse(request.url, true);
    var query = url_parts.query;
    // console.log(query);
    var product = {
        products_name: query.products_name,
        products_catagory: query.products_catagory,
        products_size: query.products_size,
        products_colour: query.products_colour,
        products_price: query.products_price,
        products_vendor: query.products_vendor,
        user_id: query.userid};
        console.log(query);

    var img1 = query.filebutton1;
    var img2 = query.filebutton2;
    var img3 = query.filebutton3;
    var img4 = query.filebutton4;
    var img5 = query.filebutton5;

    var asdasd = query.selected1.toString().split(",");
    var img =     db.query('INSERT INTO products  SET ?', product, function(err,res){
        if(err)
            throw err;
            var a = res.insertId;
        if(img1!="" && img1!=" ")
            db.query("INSERT INTO `product_images` (`image_id`, `image_link`) VALUES ('"+a+"', '"+img1+"');" , function(err,res){});
        if(img2!="" && img2!=" ")
            db.query("INSERT INTO `product_images` (`image_id`, `image_link`) VALUES ('"+a+"', '"+img2+"');" , function(err,res){});
        if(img3!="" && img3!=" ")
            db.query("INSERT INTO `product_images` (`image_id`, `image_link`) VALUES ('"+a+"', '"+img3+"');" , function(err,res){});
        if(img4!="" && img4!=" ")
            db.query("INSERT INTO `product_images` (`image_id`, `image_link`) VALUES ('"+a+"', '"+img4+"');" , function(err,res){});
        if(img5!="" && img5!=" ")
            db.query("INSERT INTO `product_images` (`image_id`, `image_link`) VALUES ('"+a+"', '"+img5+"');" , function(err,res){});
        db.query("UPDATE `products` SET `pro_images` = '"+ a +"' WHERE `products`.`products_id` = "+ a, function(err,res){});
        for(var b = 0; b<asdasd.length;b++)
            db.query("INSERT INTO `colorhandler` (`size_id`, `main_size_id`, `size_status`, `size_createdon`) VALUES ('"+a+"', '"+asdasd[b]+"', '1', NULL);", function(err,res){});;

            return res;

    });






}).listen(8001);
