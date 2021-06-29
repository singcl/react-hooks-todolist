const express = require("express");
const path = require("path");
const app = express();

app.use(express.static(path.join(__dirname, "build")));

app.listen(8995, () => {
  console.log("App listening at port 8995");
});
