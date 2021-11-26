'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('midia_capitulos', {
      id_midia_cap: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      id_midia: {
        type: Sequelize.INTEGER,
        references: {
          model: 'Midia',
          key: 'id_midia'
        },
        onDelete: 'cascade'
      },
      id_livro: {
        type: Sequelize.INTEGER,
        references: {
          model: 'Livros',
          key: 'id_livro'
        },
        onDelete: 'cascade'
      },
      id_cap: {
        type: Sequelize.INTEGER,
        references: {
          model: 'Capitulo',
          key: 'id_cap'
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

