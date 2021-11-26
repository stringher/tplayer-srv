'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class livros extends Model {
     static associate(models) {
      
    }
  };

  livros.init({
    id_livro: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false,
      autoIncrement: true
    },
    nome_livro: DataTypes.STRING,
    desc_livro: DataTypes.STRING,
    testamento: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'livros',
  });
  return livros;
};


