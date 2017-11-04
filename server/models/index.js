const db = require('../db');

module.exports = {
  
  messages: {
    get: function (queryString) {
      db.connection.query(queryString, (err, results) => {
        // console.log(results);
      });
      // make request to db
      // console.log('hello')
    }, // a function which produces all the messages
    post: function (queryString) {
      db.connection.query(queryString, (err, results) => {
        // console.log(results);
      });
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function (queryString) {
      // db.query('SELECT * FROM messages', (err, results) => {
      //   // console.log(results);
      db.connection.query(queryString, (err, data, fields) => {
        if (err) throw err;
        
        console.log(data)
      });``
      //});
      console.log(queryString)
      
    },
    post: function (queryString) {
      db.connection.query(queryString, (err, results) => {
        if (err) throw err;
        
        console.log(data)
      });
      //});
      console.log(queryString)
    }
  }
};

