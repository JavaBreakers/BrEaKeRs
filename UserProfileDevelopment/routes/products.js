
var express = require('express');

var router = express.Router();
/* GET home page. */
router.get('/products', function (req, res, next) {
    var data = new Object();
    console.log(req.session.username);

    if(req.session.username){
        data.username = req.session.username;
    }
    res.render('products', data);
});




module.exports = router;