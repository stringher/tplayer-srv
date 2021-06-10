'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Playlist extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate({Usuario}) {
      Playlist.Usuario = Playlist.belongsTo(Usuario, {foreignKey: 'id_usuario', as: "usuario"})
      Usuario.Playlists = Usuario.hasMany(Playlist, {foreignKey: 'id_usuario', as: 'playlists'})
    }
  };
  Playlist.init({
    id_usuario: DataTypes.INTEGER,
    nome: DataTypes.STRING,
    descricao: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Playlist',
  });
  return Playlist;
};
