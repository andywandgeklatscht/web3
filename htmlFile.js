const http = require("http);
const fs = require('fs').promises;

const requestListener = function (req, res) {
  fs.readFile(_dirname + "/index.html")
    .then(contents => {
      res.setHeader("Content-Type", "text/html");
    res.writeHead(200);
    res.end(contents);
  })
  .catch(err => {
    res.writeHead(500);
    res.end(err);
    return;
  });
};
let indexFile;
const requestListener = function (req, res) {
  res.setHeader("Content-Type", "text/html");
  res.writeHead(200);
  res.end(indexFile);
};
const server = http.createServer(requestListener);

fs.readFile(_dirname + "/index.html")
  .then(contents => {
    indexFile = contents;
    server.listen(port, host, () => {
      console.log('Server is running!');
    });
})
.catch(err => {
  console.error('could not read index.html');
  process.exit(1);
});
