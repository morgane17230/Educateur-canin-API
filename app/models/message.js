const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database");

class Message extends Model {}

Message.init(
  {
    text: DataTypes.TEXT,
    conversation_id: DataTypes.INTEGER,
    user_id: DataTypes.INTEGER
  },
  {
    sequelize,
    tableName: "message",
  }
);

module.exports = Message;
