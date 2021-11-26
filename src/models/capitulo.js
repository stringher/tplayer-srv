'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Capitulo extends Model {
     static associate(models) {
      
    }
  };
  Capitulo.init({
    id_cap: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false,
      autoIncrement: true
    },
    nome_cap: DataTypes.STRING,
    desc_cap: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Capitulo',
    
  });
  return Capitulo;
};


