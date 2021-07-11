'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Grupo extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  Grupo.init({
    id_grupo: {
      type:DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      comment: 'id do registro'
    },
    nome: {
      type: DataTypes.STRING(100),
      allowNull: false,
      comment: 'Nome do grupo'
    },
    ativo: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      comment: 'Grupo está ativo ou não'
    }
  }, {
    sequelize,
    modelName: 'Grupo',
    schema: 'player'
  });
  return Grupo;
};