var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
    var data = new Object();
    if(req.session.username){
        data.username = req.session.username;
        data.user_id = req.session.user_id;
           console.log(data.user_id);

    }
    res.render('index', data);
});




module.exports = router;
