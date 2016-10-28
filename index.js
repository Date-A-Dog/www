var express = require('express');
var app = express();

app.use(express.static(__dirname + '/www/'));

app.get('/', function(req, res) {
	res.sendFile(__dirname + '/index.html');
});

app.get('/history.html', function(req, res) {
	res.sendFile(__dirname + '/history.html');
});

app.get('/logout.html', function(req, res) {
	res.sendFile(__dirname + '/logout.html');
});

app.listen(3000, function(){
	console.log('Web app listening on port 3000!');
});
