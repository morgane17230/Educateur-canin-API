const { response } = require("express");
const { Dog, Cat } = require("../models");

const animalController = {
  getAllDogs: async (_, res) => {
    try {
      const dogs = await Dog.findAll();
      res.json(dogs);
    } catch (error) {
      console.trace(err);
      response.status(500).json(err.toString());
    }
  },
  getAllCats: async (_, res) => {
    try {
      const cats = await Cat.findAll();
      res.json(cats);
    } catch (error) {
      console.trace(err);
      response.status(500).json(err.toString());
    }
  },
};

module.exports = animalController;
