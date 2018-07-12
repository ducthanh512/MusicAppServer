

var createQuery = require('./createQuery');
var connection = require('./../connection');

function Todo() {

  this.get = function (res) {
    var getAllStr = createQuery.createGetAllQuery('products');
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };

  this.create = function (field_data, res) {
    insertStr = createQuery.createInsertQuery('products', field_data, null);
    connection.acquire(function (err, con) {
      con.query(insertStr, function (err, result) {
        con.release();
        if (err) {
          res.send({ status: 1, message: 'TODO creation failed' });
        } else {

          var getlastestStr = createQuery.createlastestQuery('products');
          console.log(getlastestStr);
          connection.acquire(function (err, con) {
            con.query(getlastestStr, function (err, result) {
              con.release();
              res.send(result);
            });
          });
          
         // res.send({ status: 0, message: 'TODO created successfully' });
        }
      });
    });
  };


  this.update = function (id,field_data, res) {
    var updateStr = createQuery.createUpdateQuery('products', field_data, id);
    connection.acquire(function (err, con) {
        con.query(updateStr, [field_data, field_data.id], function (err, result) {
        con.release();
        if (err) {
          res.send({ status: 1, message: 'TODO update failed' });
        } else {
          var getByIdStr = createQuery.createGetByIdQuery('products', id);
          connection.acquire(function (err, con) {
            con.query(getByIdStr, [id], function (err, result) {
              con.release();
              res.send(result);
            });
          });
        //  res.send({ status: 0, message: 'TODO updated successfully' });
        }
      });
    });
  };


  this.read = function (id, res) {
    var getByIdStr = createQuery.createGetByIdQuery('products', id);
    connection.acquire(function (err, con) {
      con.query(getByIdStr, [id], function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };


  this.delete = function (id, res) {
    var deleteStr = createQuery.createDeleteQuery('products', id);
    connection.acquire(function (err, con) {
      con.query(deleteStr, function (err, result) {
        con.release();
        if (err) {
          res.send({ status: 1, message: 'Failed to delete' });
        } else {
          res.send({ status: 0, message: 'Deleted successfully' });
        }
      });
    });
  };

}
module.exports = new Todo();