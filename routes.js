


var todo = require('./Models/todo');
var music = require('./Models/music');

module.exports = {
  configure: function (app) {
    app.get('/products/', function (req, res) {
      todo.get(res);
    });

    app.get('/products/:id/', function (req, res) {
      todo.read(req.params.id,res);
    });

    app.post('/products/', function (req, res) {
      todo.create(req.body, res);
    });

    app.put('/products/:id', function (req, res) {
      todo.update(req.params.id, req.body, res);
    });

    app.delete('/products/:id/', function (req, res) {
      todo.delete(req.params.id, res);
    });

    app.get('/music/playlist/', function (req, res) {
      music.getPlaylist(res);
    });

    app.get('/music/advert/', function (req, res) {
      music.getAdvert(res);
    });

    app.get('/music/topic/', function (req, res) {
      music.getTopic(res);
    });

    app.get('/music/genre/', function (req, res) {
      music.getGenre(res);
    });

    app.get('/music/album/', function (req, res) {
      music.getAlbums(res);
    });

    app.get('/music/favouritesongs/', function (req, res) {
      music.getFavouriteSongs(res);
    });

    
    app.get('/music/advertsongs/:id/', function (req, res) {
      music.getAdvertSongs(req.params.id,res);
    });

    app.get('/music/playlistsongs/:id/', function (req, res) {
      music.getPlaylistSongs(req.params.id,res);
    });

    app.get('/music/allPlaylist/', function (req, res) {
      music.getAllPlaylists(res);
    });

    app.get('/music/genresongs/:id/', function (req, res) {
      music.getGenreSongs(req.params.id,res);
    });

    app.get('/music/albumsongs/:id/', function (req, res) {
      music.getAlbumSongs(req.params.id,res);
    });


    app.get('/music/allTopics/', function (req, res) {
      music.getAllTopics(res);
    });

    app.get('/music/allGenres/', function (req, res) {
      music.getAllGenres(res);
    });

    app.get('/music/allAlbums/', function (req, res) {
      music.getAllAlbums(res);
    });
    
  }
};