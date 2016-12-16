var express = require('express');
console.log("cat");
var router = express.Router();
/* GET home page. */
router.get('/categories', function (req, res, next) {

    if(req.session && req.session.username) {


    var data = new Object();
    if(req.session.username){
        data.username = req.session.username;
    }
    res.render('categories', data);
    }
    else
    {
        res.redirect('/login');

    }
});




module.exports = router;
