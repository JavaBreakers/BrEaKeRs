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


var parentCateg = [];

/* GET home page. */
router.get('/childCateg/:id', function (req, res)
{

    if(req.session && req.session.username)
    {

        var id = req.session.userid;
        console.log("USER ID OF USER: ");
        console.log(id);
        console.log("----------------------------");

        var myIdReally = req.params.id;
        //----------------------------------------------------------------------------------------
        req.getConnection(function (err, connection)
        {

            query = "SELECT p_cat_name FROM parent_catagories where p_cat_id = '" + myIdReally + "'";
            connection.query(query, function (err, rows)
            {
                if (err)
                    console.log("Error Selecting : %s ", err);
                if (rows.length)
                {
                    setMyParentCategValue(rows);
                }
                else
                {}
            });


            query = "SELECT * FROM child_catagories where c_cat_parent = '" + myIdReally + "'";
            connection.query(query, function (err, rows) {
                if (err)
                    console.log("Error Selecting : %s ", err);

                if (rows.length)
                {
                    var data = new Object();
                    data = req.session.username;

                    res.render('childCateg', {username: data, title: rows, pcat: parentCateg});
                }
                else
                {
                    res.render('childCateg', {title: "Really Sorry"});
                }
            });
        });
        //----------------------------------------------------------------------------------------
    }
    else
    {
        res.redirect('/login');

    }

});

function setMyParentCategValue(value)
{
    parentCateg = value;
}

module.exports = router;

