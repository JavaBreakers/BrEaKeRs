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
var profile = require('./routes/profile');
var inbox = require('./routes/profile');
var settings = require('./routes/profile');
var orderhistory = require('./routes/profile');
var updateprofile = require('./routes/profile');
var message = require('./routes/socket');

var socket = require('./routes/socket');

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
        database: 'breakers'
    }, 'request')
);

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

// app.use(express.static(path.join('public')));

app.use('/', index);

app.use('/login', login);

app.post('/login', login);

app.post('/signup', signup);

app.get('/contact', contact);

app.post('/contact', contact);

app.get('/logout', logout);


app.get('/profile', profile);

app.get('/inbox', inbox);

app.get('/settings', settings);

app.get('/orderhistory', orderhistory);

app.post('/updateprofile', updateprofile);

app.get('/socket', socket);

app.get('/message', message);



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


module.exports = app;
