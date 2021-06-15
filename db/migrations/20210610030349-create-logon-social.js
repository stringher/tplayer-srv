'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('LogonsSociais', {
      id_usuario: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
        references: {
          model: 'Usuarios',
          key: 'id_usuario'
        }
      },
      rede_social: {
        type: Sequelize.STRING(10),
        allowNull: false
      },
      token: {
        type: Sequelize.STRING(255),
        allowNull: false
      },
      external_id: {
        type: Sequelize.STRING(255)
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('LogonsSociais');
  }
};
