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
        comment: 'Indica se o Registro está ativo'
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE,
        comment: 'Data de Criação'
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE,
        comment: 'Data de alteração'
      }
    }, {});
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable({schema:'player', tableName:'Grupos'});
  }
};