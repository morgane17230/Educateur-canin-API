const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database");

class Report extends Model {}

Report.init(
  {
    title: DataTypes.TEXT,
    content: DataTypes.TEXT,
    finished: DataTypes.BOOLEAN,
    type: DataTypes.TEXT,
    event_id: DataTypes.INTEGER,
  },
  {
    sequelize,
    tableName: "report",
  }
);

module.exports = Report;
