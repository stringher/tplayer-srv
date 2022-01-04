'use strict';
const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Midia extends Model {
    static associate(models) {
      Midia.Temas = Midia.belongsToMany(models.Tema, {through: models.MidiaTema, targetKey: 'id_tema', foreignKey: 'id_midia', onDelete: 'cascade'})
      Midia.TitulosDestaque = Midia.belongsToMany(models.TituloDestaque, {through: models.TituloDestaqueItem, foreignKey: 'id_midia', targetKey:'id_titulo_destaque'});
      //Midia.MidiaCapitulos = Midia.belongsToMany(models.midia_capitulos, {foreignKey: 'id_midia', onDelete: 'cascade'})
      Midia.Capitulo = Midia.belongsToMany(models.Capitulos, {through: { model: models.midia_capitulos }, foreignKey: "id_midia", onDelete: 'cascade'})
      //Midia.Livro = Midia.belongsToMany(models.Livros, {through: { model: models.midia_capitulos }, foreignKey: "id_midia", onDelete: 'cascade'})
    }
  };

  Midia.init({
    id_midia: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    nome: DataTypes.STRING
  }, 
  
  {
    id_Streaming: DataTypes.STRING
  },

  {
    small_description: DataTypes.STRING
  },
  {
    sequelize,
    modelName: 'Midia',
  });
  return Midia;
};
