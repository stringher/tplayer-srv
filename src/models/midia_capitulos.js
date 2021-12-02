'use strict';
const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class midia_capitulos extends Model {
    static associate(models) {
      
     /*
      midia_capitulos.Midias = midia_capitulos.belongsTo(models.Midia, {through: models.midia_capitulos, targetKey: 'id_midia', foreignKey:'id_midia'})
      midia_capitulos.Livro = midia_capitulos.belongsTo(models.Livros, {through: models.midia_capitulos, targetKey: 'id_livro', foreignKey: 'id_livro', onDelete: 'cascade'})
      midia_capitulos.Capitulo = midia_capitulos.belongsTo(models.Capitulos , {through: models.midia_capitulos, targetKey: 'id_cap', foreignKey: 'id_cap', onDelete: 'cascade'})
      */
     
     /* 
      Midia.Livros = Midia.belongsToMany(Capitulo, { through: midia_capitulos, foreignKey: 'id_cap', targetKey: 'id_cap'})
      Capitulo.Midia = Capitulo.belongsToMany(Midia, { through: midia_capitulos, foreignKey: 'id_midia', targetKey: 'id_midia'})
      Midia.Capitulo = Midia.belongsToMany(Capitulo, { through: midia_capitulos, foreignKey: 'id_cap', targetKey: 'id_cap'})
      */
    }
  };

  midia_capitulos.init({
    id_midia_cap: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
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
        model: 'Capitulos',
        key: 'id_cap'
      }
    }
    
  }, {
    sequelize,
    modelName: 'midia_capitulos',
    tableName: 'midia_capitulos'
  });
  return midia_capitulos;
};

