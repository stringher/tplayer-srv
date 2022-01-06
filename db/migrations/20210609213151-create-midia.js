'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('Midia', {
      id_midia: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
        onDelete: 'cascade'
        
      },
      
      nome: {
        allowNull: false,
        type: Sequelize.STRING(100)
      },
      id_Streaming: {
      allowNull: false,
      type: Sequelize.STRING(255)
    },
      small_description: {
      allowNull: false,
      type: Sequelize.STRING(255)
      },
      time_duration: {
      allowNull: false,
      type: Sequelize.STRING(100)
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
    await queryInterface.dropTable('Midia');
  }
};
