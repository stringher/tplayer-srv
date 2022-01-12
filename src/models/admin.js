'use strict';
const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Administradores extends Model {
    static associate({Tema}) {
    }
  };
  Administradores.init({
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
    modelName: 'Administradores',
  });
  return Administradores;
};


