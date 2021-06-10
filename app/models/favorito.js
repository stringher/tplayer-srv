'use strict';
const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Favorito extends Model {
    static associate({Usuario, Midia}) {
      Usuario.Midias = Usuario.belongsToMany(Midia, {through: Favorito, foreignKey: "id_usuario", targetKey: "id_midia"})
      Midia.Usuarios=Midia.belongsToMany(Usuario, {through: Favorito, foreignKey: "id_midia", targetKey: "id_usuario"})
    }
  };

  Favorito.init({
    id_usuario: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      references: {
        model: 'Usuarios',
        key: 'id_usuario'
      }
    },
    id_midia: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      references: {
        model: 'Midia',
        key: 'id_midia'
      }
    }
  }, {
    sequelize,
    modelName: 'Favorito',
  });
  return Favorito;
};
