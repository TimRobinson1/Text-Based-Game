const express = require('express');
const app = express();

app.engine('.html', require('ejs').renderFile);
app.use(express.static('public'));

app.get('/', function(req, res) {
  res.render('index.html')
})

app.get('*', (req, res) => res.status(200).send({
  message: 'This page does not exist.',
}));

var server = app.listen(3000, function() {
  console.log("Running the game!")
});
