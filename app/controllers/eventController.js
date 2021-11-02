const { Event } = require("../models");

const eventController = {
  getAllEvents: async (_, res) => {
    try {
      const events = await Event.findAll({
        include: [{
          association: "user"
        },{
          association: "presta"
        }] 
      });
      res.json(events);
    } catch (err) {
      console.trace(err);
      response.status(500).json(err.toString());
    }
  },
  getOneEvent: async (req, res) => {
    try {
      const id = req.params.id;
      const event = await Event.findByPk(id, {
        include: "user"
      });
      res.json(event);
    } catch (err) {
      console.trace(err);
      response.status(500).json(err.toString());
    }
  },
};

module.exports = eventController;
