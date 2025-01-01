const https = require("https");
const fs = require("fs");
const path = require("path");

const PORT = 443;

// Load self-signed certificate and private key
const options = {
  key: fs.readFileSync(path.join(__dirname, "ssl", "server.key")),
  cert: fs.readFileSync(path.join(__dirname, "ssl", "server.crt")),
};

https
  .createServer(options, (req, res) => {
    res.writeHead(200);
    res.end("Hello, HTTPS World!");
  })
  .listen(PORT, () => {
    console.log(`HTTPS Server running at https://localhost:${PORT}`);
  });

