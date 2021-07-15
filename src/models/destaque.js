'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Destaque extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      // Destaque.Estudos = Destaque.belongsToMany(models.Estudo, {through: models.DestaqueItem, foreignKey: 'id_estudo', targetKey: 'id_destaque', as: 'destaques', timestamps: false})

    }
  };
  Destaque.init({
    id_destaque: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    titulo: {
      type: DataTypes.STRING,
      allowNull: false
    },
    data_ar: {
      type: DataTypes.DATE,
      allowNull: false
    }
  }, {
    sequelize,
    modelName: 'Destaque',
    schema: 'player'
  });
  return Destaque;
};