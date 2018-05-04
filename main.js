var http = require('http');
var os = require('os');
var server = http.createServer(function (request, response) {
  response.writeHead(200, {"Content-Type": "text/plain"});
  var a = os.hostname();
  response.end("Hello World\n" + a);
});
server.listen(35000);
