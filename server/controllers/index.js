var models = require('../models');

var headers = {
  'access-control-allow-origin': '*',
  'access-control-allow-methods': 'GET, POST, DELETE, OPTIONS',
  'access-control-allow-headers': 'content-type, accept',
  'access-control-max-age': 10 // seconds
};

module.exports = {
  messages: {
    get: function (req, res) {
      
      // console.log(models.messages.get);
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      // var user = req.body.username;
      // var room = req.body.roomname;
      
      models.messages.post(req);
    } // a function which handles posting a message to the database
      
  },

  users: {
    // Ditto as above
    get: function (req, res) {},
    post: function (req, res) {
      // console.log('inside users post', req.body);
      var user = req.body.username;
      // console.log(user);
      models.users.post(user, function(exists) {
        if (exists) {
          // send back out to the client-side
          // via res
          res.status(200);
        } else {
          res.status(404).json({error: 'message'});
        }
      });
      
      // upon request finishing, resolution similar to line 29
    }
  }
};

