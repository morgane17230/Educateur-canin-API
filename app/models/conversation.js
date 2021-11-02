const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database");

class Conversation extends Model {}

Conversation.init(
  {},
  {
    sequelize,
    tableName: "conversation",
  }
);

module.exports = Conversation;
