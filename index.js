var express = require('express');
var app = express();

app.use(express.static(__dirname + '/www/css'));
app.use(express.static(__dirname + '/www/js'));
app.use(express.static(__dirname + '/www/images'));

var index = ['/', '/index.html', 'index.htm'];

app.get(index, function(req, res) {
	res.sendFile(__dirname + '/www/index.html');
});

app.get('/history.html', function(req, res) {
	res.sendFile(__dirname + '/www/history.html');
});

app.get('/requests.html', function(req, res) {
	res.sendFile(__dirname + '/www/requests.html');
});

app.get('/logout.html', function(req, res) {
	res.sendFile(__dirname + '/www/logout.html');
});

app.listen(3000, function(){
	console.log('Web app listening on port 3000!');
});
