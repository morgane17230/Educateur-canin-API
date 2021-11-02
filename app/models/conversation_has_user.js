const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database");

class conversationHasUser extends Model {}

conversationHasUser.init(
  {
    conversation_id: DataTypes.INTEGER,
    user_id: DataTypes.INTEGER,
  },
  {
    sequelize,
    tableName: "conversation_has_user",
  }
);

module.exports = conversationHasUser;
