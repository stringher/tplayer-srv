'use strict';
const {
  Model
} = require('sequelize');


module.exports = (sequelize, DataTypes) => {
  class Tema extends Model {
    static associate(models) {
      Tema.Midias = Tema.belongsToMany(models.Midia, {through: models.MidiaTema, targetKey: 'id_midia', foreignKey: 'id_tema', onDelete: 'cascade'})
    }
  };

  Tema.init({
    id_tema: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    nome: DataTypes.STRING,
    descricao: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Tema',
    tableName: 'Tema'
  });
  return Tema;
};