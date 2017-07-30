var db = require('../db');

/*var data = {
  results: [{
    username: 'Lee',
    text: ''
  }]
}*/

module.exports = {
  messages: {
    get: function (messages) {
      db.connection.query('SELECT * FROM messages', function(err, results) {
        if (err) {
          throw err;
        } else {
          console.log('models messages get', results);
        }
      });
    }, // a function which produces all the messages
    post: function (messages) {
      // var queryString = 'INSERT INTO messages (id, user_id, text, room_id) VALUES ( , ?, ?, ?)';
      // var queryArgs = [];
      // db.connection.query(queryString, queryArgs, function(err, results) {
      //   if (err) {
      //     throw err;
      //   } else {
      //     console.log('models messages post', results);
      //   }
      // });
      console.log('$$ models.messages.post/REQUEST', messages.body);
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {
      
    },
    post: function (user, callback) {
      db.connection.query('INSERT INTO users SET username=?', [user], function (err, results) {
        if (err) {
          // instead of throw error, find a way to send err back to the server
          console.log('oops');
        } else {
          //console.log('hello from models.users.post!', results);
          callback(true);
        }
      });
      
      //Insert (select u.id from users u where u.username = user)
    }
  }
};

