'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Livros extends Model {
     static associate(models) {
      Livros.Capitulo = Livros.belongsTo(models.Capitulos, {targetKey: 'id_cap', foreignKey: 'id_livro', onDelete: 'cascade'})
      //Livros.Capitulo = Livros.belongsToMany(models.Capitulos, {through: models.midia_capitulos, targetKey: 'id_cap', foreignKey: 'id_livro', onDelete: 'cascade'})
      //Livros.Midias = Livros.belongsToMany(models.Midia, {through: models.midia_capitulos, targetKey: 'id_midia', foreignKey: 'id_livro', onDelete: 'cascade'})
    }
  };
  
  Livros.init({
    id_livro: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false,
      autoIncrement: true
    },
    nome_livro: DataTypes.STRING,
    testamento: DataTypes.STRING,
    cod_testamento: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Livros',
  });
  return Livros;
};


