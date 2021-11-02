const { Presta } = require("../models");

const prestaController = {
  getAllPrestas: async (_, res) => {
    try {
      const prestas = await Presta.findAll();
      res.json(prestas);
    } catch (err) {
      console.trace(err);
      response.status(500).json(err.toString());
    }
  },
};

module.exports = prestaController;
