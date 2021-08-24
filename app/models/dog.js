const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database");

class Dog extends Model {}

Dog.init(
  {
    race: DataTypes.TEXT,
  },
  {
    sequelize,
    tableName: "dog",
  }
);

module.exports = Dog;
