'use strict';
const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class admin extends Model {
    static associate({Tema}) {
    }
  };
  admin.init({
    id_admin: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false,
      autoIncrement: true
    },
    nome: DataTypes.STRING,
    email: DataTypes.STRING,
    senha: DataTypes.STRING,
    nascimento: DataTypes.DATE,
    sexo: DataTypes.INTEGER,
    idioma: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'admin',
  });
  return admin;
};


