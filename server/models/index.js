const db = require('../db');

module.exports = {

  messages: {
    get: function (req, res, callback) {
      let queryString = 'SELECT * FROM messages'
      db.connection.query(queryString, (err, results, fields) => {
        if (err) throw err;

        res.end(results)
      });
      // make request to db
      // console.log('hello')
    }, // a function which produces all the messages
    post: function (req, res, callback) {
      let queryString = `INSERT INTO messages (username, text, roomname) VALUE (?, ?, ?)`;
      let text = JSON.stringify(req.body.text)
      let queryArgs = [req.body.username, text, req.body.roomname];
      db.connection.query(queryString, queryArgs, (err, results) => {
        if (err) throw err;
        console.log(err, results)
        res.end()
        // callback(results);
      });
      //check if write successful
      db.connection.query('SELECT * FROM messages', (err, results, fields) => {
        if (err) console.err('hello', err) ;

        console.log(results)
      });
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function (req, res, callback) {
      let queryString = 'SELECT * FROM messages'
      // db.query('SELECT * FROM messages', (err, results) => {
      //   // console.log(results);
      db.connection.query(queryString, (err, results, fields) => {
        if (err) throw err;

        res.end(results)
      });
      //});
      console.log(queryString)

    },
    post: function (req, res, callback) {
      let queryString = `INSERT INTO messages (username, text, roomname) VALUE (?, ?, ?)`;
      let queryArgs = [req.body.username, req.body.text, req.body.roomname];
      db.connection.query(queryString, queryArgs, (err, results) => {
        if (err) throw err;
        console.log(err, results)
        res.end()
        // callback(results);
      });
      // check if write successful
      db.connection.query('SELECT * FROM messages', (err, results, fields) => {
        if (err) throw err;

        console.log(results)
      });
      //});
      console.log(queryString)
    }
  }
};
