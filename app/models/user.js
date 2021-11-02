const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database");

class User extends Model {}

User.init(
  {
    lastname: DataTypes.TEXT,
    firstname: DataTypes.TEXT,
    email: DataTypes.TEXT,
    phone: DataTypes.TEXT,
    housenumber: DataTypes.TEXT,
    street: DataTypes.TEXT,
    postcode: DataTypes.INTEGER,
    city: DataTypes.TEXT,
    lat: DataTypes.TEXT,
    lon: DataTypes.TEXT,
    password: DataTypes.TEXT,
    active: DataTypes.BOOLEAN,
    role: DataTypes.TEXT,
  },
  {
    sequelize,
    tableName: "user",
  }
);

module.exports = User;
