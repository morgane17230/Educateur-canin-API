const { Animal, Dog, Cat } = require("../models");

const animalController = {
  getAllDogs: async (_, res) => {
    try {
      const dogs = await Dog.findAll();
      res.json(dogs);
    } catch (err) {
      console.trace(err);
      response.status(500).json(err.toString());
    }
  },
  getAllCats: async (_, res) => {
    try {
      const cats = await Cat.findAll();
      res.json(cats);
    } catch (err) {
      console.trace(err);
      response.status(500).json(err.toString());
    }
  },
  getAllAnimals: async (_, res) => {
    try {
      const animals = await Animal.findAll();
      res.json(animals);
    } catch (err) {
      console.trace(err);
      response.status(500).json(err.toString());
    }
  },
  getOneAnimal: async (req, res) => {
    try {
      const id = req.params.id;
      const animal = await Animal.findByPk(id, {
        include: ["dog", "cat","user"]
      });
      res.json(animal);
    } catch (err) {
      console.trace(err);
      response.status(500).json(err.toString());
    }
  },
};

module.exports = animalController;
