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
        id_livro: {
          type: Sequelize.INTEGER,
          allowNull: false,
          autoIncrement: false,
          primaryKey: true,
          references: {
            model: 'Livros',
            key: 'id_livro'
          },
          onDelete: 'cascade'
        },
        id_cap: {
          type: Sequelize.INTEGER,
          allowNull: false,
          autoIncrement: false,
          primaryKey: true,
          references: {
            model: 'Capitulo',
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
        }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('midia_capitulos');
  }
};
