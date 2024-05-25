const express = require("express");
const app = express();

const port = process.env.port || 3030;

app.get('/hello', (req, res) => {
  console.log("Hello Deepu");
  res.send("Hello Champion");
});

app.listen(port, () => {
  `Welcome to ${port} hello world`;
});
