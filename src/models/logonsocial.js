'use strict';
const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class LogonSocial extends Model {
    static associate({Usuario}) {
      Usuario.LogonSocial = Usuario.hasOne(LogonSocial, { foreignKey: 'id_usuario',  as: 'logon'} );
      LogonSocial.Usuario = LogonSocial.belongsTo(Usuario, { foreignKey: 'id_usuario',  as: 'usuario'});
    }
  };

  LogonSocial.init({
    id_usuario: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      references: {
        model: 'Usuarios',
        key: 'id_usuario'
      }
    },
    rede_social: DataTypes.STRING,
    token: DataTypes.STRING,
    external_id: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'LogonSocial',
    tableName: 'LogonsSociais'
  });
  return LogonSocial;
};
