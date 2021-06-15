'use strict';
const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class MidiaTema extends Model {
    static associate(models) {
    }
  };

  MidiaTema.init({
    id_midia:{
      type: DataTypes.INTEGER,
      references: {
        model: 'Midia',
        key: 'id_midia'
      }
    },
    id_tema: {
      type: DataTypes.INTEGER,
      references: {
        model: 'Tema',
        key: 'id_tema'
      },
      primaryKey: true,
      field: "id_tema"
    }
  }, {
    sequelize,
    modelName: 'MidiaTema',
  });
  return MidiaTema;
};
