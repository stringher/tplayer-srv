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
    id_playlist: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    id_usuario: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'Usuarios',
        key: 'id_usuario'
      }
    },
    nome: DataTypes.STRING,
    descricao: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Playlist',
  });
  return Playlist;
};
