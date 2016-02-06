var db = require('../db');

module.exports = {
  messages: {
    get: function () {}, // a function which produces all the messages

    post: function (username, text) { // a function which can be used to insert a message into the database
      db.query('INSERT INTO messages SET text=\''+text+'\';');
    }
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

