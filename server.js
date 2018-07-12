var express = require('express');
var bodyparser = require('body-parser');

var connection = require('./connection');
var routes = require('./routes');
var port = process.env.PORT || 3000;

var app = express();
app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  res.header("Access-Control-Allow-Methods", "GET, POST, OPTIONS, PUT, PATCH, DELETE");
  next();
});

app.use(bodyparser.urlencoded({extended: true}));
app.use(bodyparser.json());
  
connection.init();
routes.configure(app);

var server = app.listen(port, function() {
  console.log('Server listening on port ' + server.address().port);
})
