var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res, callback) {
      models.messages.get(req, res, callback);
      // console.log('heeeeeeeeeeeelo1');
    }, // a function which handles a get request for all messages
    post: function (req, res, callback) {
      models.messages.post(req, res, callback);
      // console.log('heeeeeeeeeeeelo2');
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res, callback) {
      models.users.get(req, res, callback);
      // console.log('heeeeeeeeeeeelo3');
    },
    post: function (req, res, callback) {
      models.users.post(req, res, callback);
    }
  }
};
