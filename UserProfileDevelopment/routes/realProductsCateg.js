/**
 * Created by Muhammad on 11/30/2016.
 */

/**
 * Created by Muhammad on 11/25/2016.
 */

var express = require('express');
var router = express.Router();
//----------------------------------------------
var bodyParser = require('body-parser');
var app     = express();
app.use(bodyParser.urlencoded({ extended: true }));

var myMainId = 0;
var myURL = [];

/* GET home page. */
router.get('/realProductsCateg/:id', function (req, res)
{
    if(req.session && req.session.username)
    {

        var myString = req.params.id;
        console.log(myString);
        console.log("Yoopssssssssssssssssssssssssssss");

        var result = myString.split(",");
        var categ_name = result[0];
        var categ_type = result[1];

        console.log("----------------- Lets See that -------------------");
        console.log(categ_name);
        console.log(categ_type);

        req.getConnection(function (err, connection) {
            var query = "SELECT * FROM child_catagories where c_cat_name = '" + categ_name + "' and c_cat_type = '" + categ_type + "'";
            connection.query(query, function (err, rows) {
                if (err)
                    console.log("Error Selecting : %s ", err);
                if (rows.length) {
                    console.log("checking URLs******************************** 8888 ***********");
                    console.log(rows);

                    setMyMainIdValue(rows[0].c_cat_id);
                    console.log("value set.. 898");
                    console.log(myMainId);
                }
                else {
                }
            });

        });


        req.getConnection(function (err, connection)
        {
            console.log("checking URLs********************************************PARt 1");
            console.log(myMainId);

            query = "SELECT child_catagories.c_cat_name, parent_catagories.p_cat_name from child_catagories INNER JOIN parent_catagories ON child_catagories.c_cat_parent=parent_catagories.p_cat_id and child_catagories.c_cat_id = '" + myMainId + "'";
            connection.query(query, function (err, rows)
            {
                if (err)
                    console.log("Error Selecting : %s ", err);
                if (rows.length)
                {
                    console.log("checking URLs********************************************");
                    console.log(rows);
                    setMyURLValue(rows);
                }
                else
                {}
            });

        });

        req.getConnection(function (err, connection)
        {
                query = "SELECT * FROM products where products_catagory = '" + myMainId + "'";
                connection.query(query, function (err, rows)
                {
                    if (err)
                        console.log("Error Selecting : %s ", err);
                    if (rows.length)
                    {
                        var data = new Object();
                        data = req.session.username;



                        console.log("checking URLs******************************** 9999 ***********");
                        console.log(myMainId);
                        console.log(rows);

                        res.render('realProductsCateg', {username: data, myData: rows, pageNumber: 1, urlsdata: myURL});
                    }
                    else
                    {//res.render('childCateg', {title: "Really Sorry"});
                    }
                });
        });

    }
    else
    {
        res.redirect('/login');
    }
});


router.post('/realProductsCateg', function (req, res, next)
{

    if(req.session && req.session.username)
    {
    console.log(req.body.pageNumber);
    var myString =  req.body.pageNumber;

    var result = myString.split(",");
    var page_number = result[0];
    var categ_type = result[1];
    var data = req.session.username;

    req.getConnection(function (err, connection)
    {
        query = "SELECT child_catagories.c_cat_name, parent_catagories.p_cat_name from child_catagories INNER JOIN parent_catagories ON child_catagories.c_cat_parent=parent_catagories.p_cat_id and child_catagories.c_cat_id = '" + categ_type + "'";
        connection.query(query, function (err, rows)
        {
            if (err)
                console.log("Error Selecting : %s ", err);
            if (rows.length)
            {
                console.log("checking URLs********************************************");
                console.log(rows);
                setMyURLValue(rows);
            }
            else
            {}
        });


        query = "SELECT * FROM products where products_catagory = '" + categ_type + "'";
        connection.query(query, function (err, rows)
        {
            if (err)
                console.log("Error Selecting : %s ", err);

            if (rows.length)
            {
                res.render('realProductsCateg', {username: data, myData: rows, pageNumber: page_number, urlsdata: myURL});
            }
            else
            {
            }
        });
    });
    }
    else
    {
        res.redirect('/login');
    }

});

function setMyURLValue(value)
{
    console.log("polo 123 99999999999999999999");
    myURL = value;
}

function setMyMainIdValue(value)
{
    console.log("polo 789 99999999999999999999");
    console.log(value);
     myMainId = value;
}

module.exports = router;

