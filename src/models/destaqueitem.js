'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class DestaqueItem extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      const {Estudo, Destaque} = models
      Estudo.Destaques = Estudo.belongsToMany(Destaque, {through: DestaqueItem, foreignKey: 'id_estudo', targetKey: 'id_destaque', as: 'destaques'})
      Destaque.Estudos = Destaque.belongsToMany(Estudo, {through: DestaqueItem, foreignKey: 'id_destaque', targetKey: 'id_estudo', as: 'estudos'})
    }
  };
  DestaqueItem.init({
    id_destaque: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    id_estudo: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    }
  }, {
    sequelize,
    modelName: 'DestaqueItem',
    tableName: 'DestaqueItens',
    schema: 'player',
    timestamps: false
  });
  return DestaqueItem;
};