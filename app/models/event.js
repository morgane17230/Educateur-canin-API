const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database");

class Event extends Model {}

Event.init(
  {
    start_time: DataTypes.DATE,
    end_time: DataTypes.DATE,
    paid: DataTypes.BOOLEAN,
    user_id: DataTypes.INTEGER,
    presta_id: DataTypes.INTEGER,
  },
  {
    sequelize,
    tableName: "event",
  }
);

module.exports = Event;
