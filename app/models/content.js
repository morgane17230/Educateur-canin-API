const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database");

class Content extends Model {}

Content.init(
  {
    element: DataTypes.TEXT,
    text: DataTypes.TEXT,
    photo: DataTypes.BLOB,
  },
  {
    sequelize,
    tableName: "content",
  }
);

module.exports = Content;
