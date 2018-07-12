

var createQuery = require('./createQuery');
var connection = require('./../connection');

function ptelearning() {
  
  this.getQuestionByCode = function (code, res) {
    var getByIdStr = createQuery.createGetByForeignId('question','categoryCode', code);
    connection.acquire(function (err, con) {
      console.log('nay: ',connection, con);
      con.query(getByIdStr, [code], function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };

  this.getAnswerByQuestionId = function (id, res) {
    var getByIdStr = createQuery.createGetByForeignId('answer','questionId', id);
    connection.acquire(function (err, con) {
      con.query(getByIdStr, [id], function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };


  this.getCategories = function (res) {
    var querystr = createQuery.getCategoriesQuery2();
    connection.acquire(function (err, con) {
      con.query(querystr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };


  this.getAnswerByCode = function (code, res) {
    var getByIdStr = createQuery.getAnswerByCode(code);
    connection.acquire(function (err, con) {
      con.query(getByIdStr, [code], function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };



  this.insertNewQuestion = function (field_data, res) {
    insertStr = createQuery.createInsertQuery('question', field_data, null);
    connection.acquire(function (err, con) {
      con.query(insertStr, function (err, result) {
        con.release();
        if (err) {
          res.send({ status: 1, message: 'Question creation failed' });
        }
        else{
          res.send({ status: 0, message: 'Question created successfully' });
        }
      });
    });
  };




}
module.exports = new ptelearning();