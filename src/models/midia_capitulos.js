'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class midia_capitulos extends Model {
      static associate( Midia, Livros, Capitulo) {
        Midia.Capitulo = Midia.belongsToMany(Capitulo, {through: midia_capitulos, foreignKey: "id_midia", targetKey: "id_cap"})
        Livros.Capitulo = Livros.belongsToMany(Livros, {through: midia_capitulos, foreignKey: "id_livros", targetKey: "id_midia"})
        Capitulo.Midia = Capitulo.belongsToMany(Capitulo, {through: midia_capitulos, foreignKey: "id_cap", targetKey: "id_midia"})
        }
      }
    };
       
    midia_capitulos.init ({    

      id_midia: {
        type:DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        references: {
          model: 'Midia',
          key: 'id_midia'
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
    },
  
      
     id_cap: {
      type:DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      references: {
      model: 'Capitulo',
      key: 'id_cap'
       }
    }
  },{
  
    sequelize,
    modelName: 'midia_livros',
    tableName: 'midia_livros'
    
  }); 
  
 {
  return midia_capitulos;
 };


