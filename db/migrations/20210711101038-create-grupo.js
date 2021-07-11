'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable({schema:'player', tableName:'Grupos'}, {
      id_grupo: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
        comment: 'Identificador do registro'
      },
      nome: {
        type: Sequelize.STRING(100),
        allowNull: false,
        comment: 'Nome do grupo'
      },
      ativo: {
        type: Sequelize.BOOLEAN,
        allowNull: false,
        comment: 'Registro ativo'
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    }, {});
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable({schema:'player', tableName:'Grupos'});
  }
};