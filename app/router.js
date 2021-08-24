const express = require("express");
const router = express.Router();
const animalController = require("./controllers/animalController")
const userController = require("./controllers/userController");
const eventController = require("./controllers/eventController");
const messageController = require("./controllers/messageController");
const reportController = require("./controllers/reportController");
const contentController = require("./controllers/contentController");


router.get("/dogs", animalController.getAllDogs);
router.get("/cats", animalController.getAllCats);

module.exports = router;