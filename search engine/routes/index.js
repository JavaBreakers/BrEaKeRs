var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
    var data = new Object();
    console.log(req.session.username);
    if(req.session.username){
        data.username = req.session.username;
    }
    res.render('index', data);
});

router.get('/about', function (req, res, next) {

    var data = new Object();
    console.log(req.session.username);
    if(req.session.username){
        data.username = req.session.username;
    }
        res.render('about', data);


});


module.exports = router;
