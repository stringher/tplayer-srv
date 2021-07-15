'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable({tableName: 'Destaques', schema: 'player'}, {
      id_destaque: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
        comment: 'Identificador do registro'
      },
      titulo: {
        type: Sequelize.STRING(100),
        allowNull: false,
        comment: 'Nome do destaque'
      },
      data_ar: {
        type: Sequelize.DATE,
        allowNull: false,
        comment: 'Data em que irá ao ar'
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
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable({tableName: 'Destaques', schema: 'player'});
  }
};