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
      host: 'us-cdbr-iron-east-04.cleardb.net',
      user: 'b21da7aaabf93c',
      password: 'c38472cf',
      database: 'heroku_1d252267e6e485f'
    });
  };
  
  this.acquire = function(callback) {
    this.pool.getConnection(function(err, connection) {
      callback(err, connection);
    });
  };
}
  
module.exports = new Connection();