const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database");

class Animal extends Model {}

Animal.init(
  {
    name: DataTypes.TEXT,
    birth: DataTypes.DATE,
    photo: DataTypes.BLOB,
    cat_id: DataTypes.INTEGER,
    dog_id: DataTypes.INTEGER,
    user_id: DataTypes.INTEGER,
  },
  {
    sequelize,
    tableName: "animal",
  }
);

module.exports = Animal;
