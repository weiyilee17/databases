var db = require('../db');

module.exports = {
  messages: {
    get: function () {
      db.connection.query('SELECT * FROM messages', function(err, results) {
        if (err) {
          throw err;
        } else {
          console.log('messages get', results);
        }
      });
    }, // a function which produces all the messages
    post: function () {
      db.connection.query() 
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

