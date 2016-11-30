var express = require('express');
console.log("cat");
var router = express.Router();
/* GET home page. */
router.get('/subcategories', function (req, res, next) {
    var data = new Object();
    console.log(req.session.username);
    if(req.session.username){
        data.username = req.session.username;
    }
    res.render('subcategories', data);
});




module.exports = router;
