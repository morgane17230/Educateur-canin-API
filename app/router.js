const express = require("express");
const router = express.Router();
const animalController = require("./controllers/animalController")
const userController = require("./controllers/userController");
const eventController = require("./controllers/eventController");
const prestaController = require("./controllers/prestaController");
const reportController = require("./controllers/reportController");


router.get("/dogs", animalController.getAllDogs);
router.get("/cats", animalController.getAllCats);
router.get("/users", userController.getAllUsers);
router.get("/user/:id", userController.getOneUser);
router.get("/events", eventController.getAllEvents);
router.get("/event/:id", eventController.getOneEvent);
router.get("/animals", animalController.getAllAnimals);
router.get("/animal/:id", animalController.getOneAnimal);
router.get("/prestas", prestaController.getAllPrestas);
router.get("/reports", reportController.getAllReports);
router.get("/report/:id", reportController.getOneReport);

module.exports = router;