const dotenv = require("dotenv");
dotenv.config();
const express = require("express");
const router = require("./router");

var cors = require("cors");
const PORT = process.env.PORT || 5000;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(
  cors({
    origin: '*',
  })
);

app.use(router);
app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`);
});