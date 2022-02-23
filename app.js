const http = require("http");

const host = '0.0.0.0';
const port = 8000;

const requestListener = function (req, res) {
  res.writeHead(200);
  res.end("my server");
};
const server = http createServer(requestListener);
server.listen(port, host, () => {
  console.log('Server is running!');
});