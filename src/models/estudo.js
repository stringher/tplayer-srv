'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Estudo extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      // Estudo.Destaques = Estudo.belongsToMany(models.Destaque, {through: models.DestaqueItem, foreignKey: 'id_destaque', targetKey: 'id_estudo', as: 'estudos', timestamps: false})
    }
  };
  Estudo.init({
    id_estudo: {
      type:  DataTypes.INTEGER,
      autoIncrement: true,
      allowNull: false,
      primaryKey: true
    },
    titulo: {
      type: DataTypes.STRING,
      allowNull: false
    },
    arquivo: {
      type: DataTypes.STRING,
      allowNull: false
    },
    mediaType: {
      type: DataTypes.STRING,
      allowNull: false,
      field: 'media_type'
    },
    capa: {
      type: DataTypes.STRING,
      allowNull: true,
      field: 'cover_file'
    },
    coverMediaType: {
      type: DataTypes.STRING,
      allowNull: true,
      field: 'cover_media_type'
    },
    duracao: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    ordem: DataTypes.INTEGER,
    ativo: {
      type: DataTypes.BOOLEAN,
      allowNull: false
    },
    id_categoria: {
      type: DataTypes.INTEGER,
      allowNull: false
    }
  }, {
    sequelize,
    modelName: 'Estudo',
    schema: 'player'
  });
  return Estudo;
};