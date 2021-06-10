'use strict';
const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Midia extends Model {
    static associate(models) {
      Midia.Temas = Midia.belongsToMany(models.Tema, {through: models.MidiaTema, targetKey: 'id_tema', foreignKey: 'id_midia'})
    }
  };

  Midia.init({
    id_midia: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    nome: DataTypes.STRING,
    media_type: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Midia',
  });
  return Midia;
};
