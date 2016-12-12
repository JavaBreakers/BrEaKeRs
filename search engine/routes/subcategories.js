var express = require('express');
console.log("cat 2");
var router = express.Router();
/* GET home page. */
router.get('/subcategories', function (req, res, next) {
console.log("her subca");
    var data = new Object();
    console.log(req.session.username);

    if(req.session.username){
        data.username = req.session.username;
    }
    res.render('vendor', data);
});



module.exports = router;
