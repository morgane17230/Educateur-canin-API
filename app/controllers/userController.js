const { User } = require("../models");

const userController = {
  getAllUsers: async (_, res) => {
    try {
      const users = await User.findAll();
      res.json(users);
    } catch (err) {
      console.trace(err);
      response.status(500).json(err.toString());
    }
  },

  getOneUser: async (req, res) => {
    try {
      const id = req.params.id;
      const user = await User.findByPk(id, {
        include: [
          {
            association: "events",
            include: ["reports"],
          },
          {
            association: "animals",
            include: ["cat", "dog"],
          },
          {
            association: "messages",
            include: ["conversations"],
          },
          {
            association: "conversations",
            include: ["messages", "users"],
          },
        ],
      });
      res.json(user);
    } catch (err) {
      console.trace(err);
      response.status(500).json(err.toString());
    }
  },
};

module.exports = userController;
