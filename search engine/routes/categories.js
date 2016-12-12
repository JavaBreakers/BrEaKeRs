var express = require('express');
console.log("cat");
var router = express.Router();
/* GET home page. */
router.get('/categories', function (req, res, next) {
    var data = new Object();
    console.log(req.session.username);
    if(req.session.username){
        data.username = req.session.username;
    }
    res.render('categories', data);
});




module.exports = router;
