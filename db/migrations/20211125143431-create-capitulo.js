'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('Capitulos', {
      id_cap: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        unique: true,
        type: Sequelize.INTEGER
      },
      id_livro: {
        type: Sequelize.INTEGER,
        allowNull: false,
        autoIncrement: false,
        primaryKey: true,
        unique: false,
        references: {
          model: 'Livros',
          key: 'id_livro'
        },
        onDelete: 'cascade'
      },
      num_cap: {
        type: Sequelize.INTEGER
      },
      titulo_cap: {
        type: Sequelize.STRING(200)
      },
      desc_cap: {
        type: Sequelize.STRING(200)
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
    await queryInterface.dropTable('Capitulos');
  }
};