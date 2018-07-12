var mysql = require('mysql');
  
function Connection() {
  this.pool = null;
  
  this.init = function() {
    this.pool = mysql.createPool({
      connectionLimit: 10,
      // host: '127.0.0.1',
      // user: 'root',
      // password: '123456',
      // database: 'MusicDB',
      host: 'musicappdb.caetv9pd8to1.us-east-1.rds.amazonaws.com',
      user: 'root',
      password: '12345678',
      database: 'MusicAppDB'
    });
  };
  
  this.acquire = function(callback) {
    this.pool.getConnection(function(err, connection) {
      callback(err, connection);
    });
  };
}
  
module.exports = new Connection();