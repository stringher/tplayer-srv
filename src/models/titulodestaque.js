'use strict';

const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class TituloDestaque extends Model {
    static associate(models) {
      TituloDestaque.Midias =  TituloDestaque.belongsToMany(models.Midia, { through: models.TituloDestaqueItem, foreignKey: 'id_titulo_destaque', targetKey:'id_midia', as: 'midias'});
    }
  };

  TituloDestaque.init({
    id_titulo_destaque: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    titulo: DataTypes.STRING,
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
