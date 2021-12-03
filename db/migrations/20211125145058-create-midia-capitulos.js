'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('midia_capitulos', {
      
      id_midia_cap: {
          allowNull: true,
          autoIncrement: true,
          primaryKey: true,
          type: Sequelize.INTEGER
        },
       
        id_cap: {
          type: Sequelize.INTEGER,
          allowNull: false,
          autoIncrement: false,
          primaryKey: true,
          unique: false,
          references: {
            model: 'Capitulos',
            key: 'id_cap'
          },
          onDelete: 'cascade'
        },
        id_midia: {
          type: Sequelize.INTEGER,
          allowNull: false,
          autoIncrement: false,
          primaryKey: true,
          references: {
            model: 'Midia',
            key: 'id_midia'
          },
          onDelete: 'cascade'
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
    await queryInterface.dropTable('midia_capitulos');
  }
};
