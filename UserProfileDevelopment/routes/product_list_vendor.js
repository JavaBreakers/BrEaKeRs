var express = require('express');
console.log("cat vendorlist");
var router = express.Router();

 var myProData = [];

/* GET home page. */
router.get('/product_list_vendor', function (req, res, next) {

;

    if(req.session && req.session.username) {

    var data = new Object();

    req.getConnection(function (err, connection) {
        query = "SELECT * FROM products where user_id =  "+req.session.userid;
        connection.query(query, function (err, rows) {
            if (err)
                console.log(err);
            if (rows.length) {
                setValue(rows);
            }
            else {
            }
        });
    });

    if(req.session.username){
        data.username = req.session.username;
    }
    res.render('product_list_vendor', { name : data ,product: myProData });

}
else
{
    res.redirect('/login');

}
});



module.exports = router;

function setValue(value)
{
    myProData = value;
    console.log("----- Get Ready ----------------");
    console.log(myProData[0].products_name);
}
