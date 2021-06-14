'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class TituloDestaqueItem extends Model {
    static associate(models) {
    }
  };
  TituloDestaqueItem.init({
    id_titulo_destaque: DataTypes.INTEGER,
    id_midia: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'TituloDestaqueItem',
  });
  return TituloDestaqueItem;
};
