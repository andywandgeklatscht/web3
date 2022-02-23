const http = require("http");

const host = '0.0.0.0';
const port = 8000;

const requestListener = function (req, res) {
  res.setHeader("Content-Type", "text/csv");
  res.setHeader("Content-Disposition", "attachment;filename=example.csv")
  res.writeHead(200);
  res.end('id,name,email\n1,Sammy Shark,shark@ocean.com');
};

const server = http.createServer(requestListener);
server.listen(port, host, () => {
  console.log(''Server is running!);
});
