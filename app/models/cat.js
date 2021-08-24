const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database");

class Cat extends Model {}

Cat.init(
  {
    race: DataTypes.TEXT,
  },
  {
    sequelize,
    tableName: "cat",
  }
);

module.exports = Cat;
