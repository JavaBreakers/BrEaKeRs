var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');

var session = require('express-session');

var index = require('./routes/index');
var login = require('./routes/login');
var logout = require('./routes/logout');
var contact = require('./routes/contact');
var signup = require('./routes/signup');
var cart = require('./routes/cart');

var productDetails = require('./routes/productDetails');
var childCateg = require('./routes/childCateg');

var realProductsCateg = require('./routes/realProductsCateg');

var app = express();

var connection = require('express-myconnection');
var mysql = require('mysql');

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(session({
    secret: '1234567890QWERTY',
    proxy: true,
    resave: true,
    saveUninitialized: true
}));

app.use(
    connection(mysql, {

        host: 'localhost',
        user: 'root',
        password: '',
        port: 3306, //port mysql
        database: 'javabreakers'
    }, 'request')
);


// uncomment after placing your favicon in /assets
//app.use(favicon(path.join(__dirname, 'assets', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'assets')));

app.use(function(req, res, next) {
    res.locals.session = req.session;
    next();
});

app.use('/', index);

app.use('/login', login);

app.post('/login', login);

app.post('/signup', signup);

app.get('/contact', contact);

app.post('/contact', contact);

app.get('/logout', logout);

app.get('/cart/add-to-cart/:id', cart);
app.get('/cart/shop', cart);
app.get('/cart/checkout', cart);

//---------- Added by Azam ----------------------------------
app.get('/productDetails/:id', productDetails);
app.post('/productDetails', productDetails);

app.get('/childCateg/:id', childCateg);

app.get('/realProductsCateg/:id', realProductsCateg);
app.post('/realProductsCateg', realProductsCateg);
app.get('/realProductsCateg', realProductsCateg);





// catch 404 and forward to error handler
app.use(function (req, res, next) {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
});

// error handler
app.use(function (err, req, res, next) {
    // set locals, only providing error in development
    res.locals.message = err.message;
    res.locals.error = req.app.get('env') === 'development' ? err : {};

    // render the error page
    res.status(err.status || 500);
    res.render('error');
});

app.listen(1337, function(){
    console.log('Ready on port 1337');
});


module.exports = app;
