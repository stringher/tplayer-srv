'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Capitulos extends Model {
     static associate(models) {
       Capitulos.Livro = Capitulos.belongsToMany(models.Livros, {through: models.midia_capitulos, targetKey: 'id_livro', foreignKey: 'id_cap', onDelete: 'cascade'})
       Capitulos.Midias = Capitulos.belongsToMany(models.Midia, {through: models.midia_capitulos, targetKey: 'id_midia', foreignKey: 'id_cap', onDelete: 'cascade'})
      }
  };
  Capitulos.init({
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
    modelName: 'Capitulos',
    
  });
  return Capitulos;
};


