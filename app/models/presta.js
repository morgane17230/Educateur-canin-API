const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database");

class Presta extends Model {}

Presta.init(
  {
    name: DataTypes.TEXT,
    price: DataTypes.INTEGER,
  },
  {
    sequelize,
    tableName: "presta",
  }
);

module.exports = Presta;
