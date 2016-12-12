var express = require('express');
console.log("cat vendorlist");
var router = express.Router();
/* GET home page. */
router.get('/product_list_vendor', function (req, res, next) {

    console.log("her listvendorrr");
    var data = new Object();
    console.log(req.session.username);

    if(req.session.username){
        data.username = req.session.username;
    }
    res.render('product_list_vendor', data);
});



module.exports = router;
