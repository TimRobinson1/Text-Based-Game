const app = express();
const bodyParser = require('body-parser');

app.use(express.static(path.join(__dirname, 'views')));

app.use(session({
  cookieName: 'session',
  secret: 'super-secret'
}))

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.engine('.html', require('ejs').renderFile);

const User = db.User;
const Listing = db.Listing;

app.get('/', function(req, res) {
  res.render('index')
})


app.get('*', (req, res) => res.status(200).send({
  message: 'Welcome to the beginning of nothingness.',
}));

var server = app.listen(3000, function() {
  console.log("Running the game!")
});
