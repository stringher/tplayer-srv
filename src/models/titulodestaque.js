'use strict';

const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class TituloDestaque extends Model {
    static associate(models) {
    }
  };

  TituloDestaque.init({
    id_titulo_destaque: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    data_inicio: {
      type: DataTypes.DATE,
      allowNull: false
    }
  }, {
    sequelize,
    modelName: 'TituloDestaque',
    tableName: 'TitulosDestaque'
  });

  return TituloDestaque;
};
