var express = require('express');
console.log("cat 2");
var router = express.Router();
/* GET home page. */
router.get('/subcategories', function (req, res, next) {


    if(req.session && req.session.username) {


    var data = new Object();
    console.log(req.session.username);

    if(req.session.username){
        data.username = req.session.username;
        data.useridd = req.session.user_id;
    }
    res.render('vendor', data);


    }
    else
    {
        res.redirect('/login');

    }
});



module.exports = router;
