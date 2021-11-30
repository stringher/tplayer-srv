'use strict';
const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class midia_capitulos extends Model {
    static associate({Midia, Capitulo, Livros}) {
      Midia.Livros = Midia.belongsToMany(Capitulo, { through: midia_capitulos, foreignKey: 'id_cap', targetKey: 'id_cap'})
      Capitulo.Midia = Capitulo.belongsToMany(Midia, { through: midia_capitulos, foreignKey: 'id_midia', targetKey: 'id_midia'})
      Midia.Capitulo = Midia.belongsToMany(Capitulo, { through: midia_capitulos, foreignKey: 'id_cap', targetKey: 'id_cap'})
      
    }
  };

  midia_capitulos.init({
    id_midia: {
      type:DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      references: {
        model: 'Midia',
        key: 'id_midia'
      }
    },
    id_cap: {
      type:DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      references: {
        model: 'Capitulo',
        key: 'id_cap'
      }
    },
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
    modelName: 'midia_capitulos',
    tableName: 'midia_capitulos'
  });
  return midia_capitulos;
};

