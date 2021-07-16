'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Categoria extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  Categoria.init({
    id_categoria: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    nome: {
      type: DataTypes.STRING,
      allowNull: false
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
    ordem: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    ativo: {
      type: DataTypes.BOOLEAN,
      allowNull: false
    },
    id_grupo: {
      type: DataTypes.INTEGER,
      allowNull: false
    }
  }, {
    sequelize,
    modelName: 'Categoria',
    tableName: 'Categorias',
    schema: 'player'
  });
  return Categoria;
};