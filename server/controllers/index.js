var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) { // a function which handles a get request for all messages
      // console.log('check req', req);
      // res.send('testing get');
      // res.end('end')
    }, 
    post: function (req, res) { // a function which handles posting a message to the database
      var username = req.body.name;
      var text = req.body.text;
      
      models.messages.post(username, text);

      res.send('testing post', 302, req.body);
    }
  },

  users: {
    // Ditto as above
    get: function (req, res) {},
    post: function (req, res) {}
  }
};

