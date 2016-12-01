var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function (req, res, next) {
    if (req.session.username) {
        res.redirect('/');
    } else {
        res.render('login', {});
    }
});

router.post('/login', function (req, res, next) {

    req.getConnection(function (err, connection) {

        var query = "SELECT * FROM user where user_email = '" + req.body.email + "' AND user_password = '" + req.body.password + "'";


        connection.query(query, function (err, rows) {

            if (err)
                console.log("Error Selecting : %s ", err);

            if (rows.length) {

                req.session.userid = rows[0].user_id;
                req.session.username = rows[0].user_name;

                res.redirect('/profile');


            } else {
                //user doesn't exist
                res.render('login', {error: "Invalid email or password"});


            }
            //res.render('customers', {page_title: "Customers - Node.js", data: rows});

        });

    });
});

router.get('/logout', function (req, res) {
    req.session.destroy(function (err) {
        if (err) {
            console.log(err);
        } else {
            res.redirect('/');
        }
    });
});



module.exports = router;
