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
    num_cap: DataTypes.INTEGER,
    titulo_cap: DataTypes.STRING,
    desc_cap: DataTypes.STRING,
  
    id_livro: {
      type:DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      references: {
        model: 'Livros',
        key: 'id_livro'
      }
    }


  }, {
    sequelize,
    modelName: 'Capitulos',
    
  });
  return Capitulos;
};


