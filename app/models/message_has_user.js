const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database");

class messageHasUser extends Model {}

messageHasUser.init(
  {
    message_id: DataTypes.INTEGER,
    user_id: DataTypes.INTEGER,
  },
  {
    sequelize,
    tableName: "message_has_user",
  }
);

module.exports = messageHasUser;
