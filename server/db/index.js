var mysql = require('mysql');

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".

// for HackReactor computers, connect with user 'student', 'student' password

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'student',
  password: 'student',
  database: 'chat'
});

connection.connect(function(err) {
  if (!err) {
    console.log('Database is connected!');
  } else {
    console.log('Error connecting database');
  }
});


module.exports.connection = connection;
// connection.end();

