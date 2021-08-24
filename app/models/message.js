const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database");

class Message extends Model {}

Message.init(
  {
    text: DataTypes.TEXT,
  },
  {
    sequelize,
    tableName: "message",
  }
);

module.exports = Message;
