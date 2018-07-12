

var createQuery = require('./createQuery');
var connection = require('./../connection');

function music() {

  this.getPlaylist = function (res) {
    var getAllStr = createQuery.createGetPlayList();
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };

  this.getAllPlaylists = function (res) {
    var getAllStr = createQuery.createGetAllQuery('playlist');
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };


  this.getAdvert = function (res) {
    var getAllStr = createQuery.createGetAdvert();
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };


  this.getTopic = function (res) {
    var getAllStr = createQuery.createGetAllQuery('topic');
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };


  this.getGenre = function (res) {
    var getAllStr = createQuery.createGetAllQuery('genre');
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };


  this.getAlbums = function (res) {
    var getAllStr = createQuery.createGetAllQuery('album');
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };

  this.getFavouriteSongs= function (res) {
    var getAllStr = createQuery.createGetFavouriteSongs();
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };


  this.getAdvertSongs= function (id,res) {
    var getAllStr = createQuery.createGetByForeignId('song','id',id);
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };

  this.getPlaylistSongs= function (id,res) {
    var getAllStr = createQuery.createGetByForeignId('song','idPlayList',id);
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };

  this.getGenreSongs= function (id,res) {
    var getAllStr = createQuery.createGetByForeignId('song','idGenre',id);
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };


  this.getAlbumSongs= function (id,res) {
    var getAllStr = createQuery.createGetByForeignId('song','idAlbum',id);
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };

  
  
  this.getAllTopics = function (res) {
    var getAllStr = createQuery.createGetAllQuery('topic');
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };


  this.getAllGenres = function (res) {
    var getAllStr = createQuery.createGetAllQuery('genre');
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };


  this.getAllAlbums = function (res) {
    var getAllStr = createQuery.createGetAllQuery('album');
    connection.acquire(function (err, con) {
      con.query(getAllStr, function (err, result) {
        con.release();
        res.send(result);
      });
    });
  };




}
module.exports = new music();