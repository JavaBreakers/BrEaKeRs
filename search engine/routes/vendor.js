var express = require('express');
console.log("cat");
var router = express.Router();

console.log("777777777777777");

/* GET home page. */
router.get('/vendor', function (req, res, next) {

    console.log("777777777777777");

    var data = new Object();
    console.log(req.session.username);
        if(req.session.username){
        data.username = req.session.username;
    }
    res.render('vendor', data);
});




module.exports = router;
