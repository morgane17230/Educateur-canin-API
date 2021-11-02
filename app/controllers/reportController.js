const { Report } = require("../models");

const reportController = {
  getAllReports: async (_, res) => {
    try {
      const reports = await Report.findAll({
          include: {
              association: "event",
              include: ["user"]
          }
      });
      res.json(reports);
    } catch (err) {
      console.trace(err);
      response.status(500).json(err.toString());
    }
  },
  getOneReport: async (req, res) => {
    try {
      const id = req.params.id;
      const report = await Report.findByPk(id, {
        include: {
          association: "event",
          include: ["user"],
        },
      });
      res.json(report);
    } catch (err) {
      console.trace(err);
      response.status(500).json(err.toString());
    }
  },
};

module.exports = reportController;
