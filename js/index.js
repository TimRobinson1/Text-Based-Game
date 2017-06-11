const express = require('express');
const app = express();

app.engine('.html', require('ejs').renderFile);

app.get('/', function(req, res) {
  res.render('index.html')
})


app.get('*', (req, res) => res.status(200).send({
  message: 'Welcome to the beginning of nothingness.',
}));

var server = app.listen(3000, function() {
  console.log("Running the game!")
});
