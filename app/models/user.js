const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database");

class User extends Model {}

User.init(
  {
    lastname: DataTypes.TEXT,
    firstname: DataTypes.TEXT,
    email: DataTypes.TEXT,
    phone: DataTypes.TEXT,
    num: DataTypes.INTEGER,
    comp: DataTypes.TEXT,
    type: DataTypes.TEXT,
    address: DataTypes.TEXT,
    postal_code: DataTypes.TEXT,
    city: DataTypes.TEXT,
    latitude: DataTypes.INTEGER,
    longitude: DataTypes.INTEGER,
    active: DataTypes.BOOLEAN,
    role: DataTypes.TEXT,
  },
  {
    sequelize,
    tableName: "user",
  }
);

module.exports = User;
