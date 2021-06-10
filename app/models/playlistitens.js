'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class PlaylistItem extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate({Playlist, Midia}) {
      Playlist.Usuarios = Playlist.belongsToMany(Midia, { through: PlaylistItem, foreignKey: 'id_playlist', targetKey: 'id_midia'})
      Midia.Playlists = Midia.belongsToMany(Playlist, { through: PlaylistItem, foreignKey: 'id_midia', targetKey: 'id_playlist'})
    }
  };
  PlaylistItem.init({
    id_playlist: {
      type:DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      references: {
        model: 'Playlists',
        key: 'id_playlist'
      }
    },
    id_midia: {
      type:DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      references: {
        model: 'Midia',
        key: 'id_midia'
      }
    }
  }, {
    sequelize,
    modelName: 'PlaylistItem',
    tableName: 'PlaylistItens'
  });
  return PlaylistItem;
};
