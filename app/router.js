const express = require("express");
const router = express.Router();
const animalController = require("./controllers/animalController")


router.get("/dogs", animalController.getAllDogs);
router.get("/cats", animalController.getAllCats);

module.exports = router;