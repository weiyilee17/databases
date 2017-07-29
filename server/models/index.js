var db = require('../db');

module.exports = {
  messages: {
    get: function () {
      db.connection.query('SELECT * FROM messages', function(err, results) {
        if (err) {
          throw err;
        } else {
          console.log('models messages get', results);
        }
      });
    }, // a function which produces all the messages
    post: function () {
      var queryS = 'INSERT INTO messages (id, user_id, text, room_id) VALUES ?';
      db.connection.query(q, messages, function(err, results) {
        if (err) {
          throw err;
        } else {
          console.log('models messages post', results);
        }
      });
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {
      
    },
    post: function () {
      
    }
  }
};

