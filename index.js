var express = require("express");
var app = express();
// app.set("view engine", "ejs");
// app.set("views", "./views");


app.get("/", function(req,res){
    res.send("trangchu");
});


app.listen(process.env.PORT || 3000);