
var express = require('express');

var router = express.Router();
/* GET home page. */
router.post('/search', function (req, res, next) {

    if(req.session && req.session.username){

        var q = req.body.keyword;

        var data = new Object();
        data = req.session.username;


        req.getConnection(function (err, connection) {

            var query = "SELECT * FROM products WHERE products_name LIKE '%"+ q +"%'";

            connection.query(query, function (err, rows) {

                if (err)

                    console.log("Error Selecting : %s ", err);

                res.render('search', {username: data, data: rows, keyword: q});

            });

        });

    }
    else {
        res.redirect('/login');
    }
});




module.exports = router;