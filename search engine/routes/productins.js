var http = require('http'),
    fs = require('fs'),
    url = require('url'),
    choices = ["hello world", "goodbye world"];

var db = require('../db');



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
        gender:query.gender};

    var img1 = query.filebutton1;
    var img2 = query.filebutton2;
    var img3 = query.filebutton3;
    var img4 = query.filebutton4;
    var img5 = query.filebutton5;
    var sepvar = "123";
    var imgprod = {};


    // console.log(db.query('SELECT max(`products_id`) from products',defered.makeNodeResolver())+"thiss");

    var img =     db.query('INSERT INTO products  SET ?', product, function(err,res){
        if(err)
            throw err;

        console.log('Last insert ID of product is:', res.insertId);

        var waitTill = new Date(new Date().getTime() + 3000);
        while(waitTill > new Date()){}
        return res.insertId;

    });

    console.log(sepvar+" :: "+img[0]);
    var prod = { product_id : 1, prod_img_name :sepvar};
    db.query('INSERT INTO product_images SET ?', prod , function(err,res){
    });





}).listen(8009);
