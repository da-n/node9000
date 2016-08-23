var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('node9000 reporting for duty.');
});

app.listen(3000, function () {
  console.log('node9000 listening on port 3000');
});
