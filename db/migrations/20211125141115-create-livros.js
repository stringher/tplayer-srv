'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('livros', {
      id_livro: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      nome_livro: {
        type: Sequelize.STRING(100)
      },
      desc_livro: {
        type: Sequelize.STRING(300)
      },
      testamento: {
        type: Sequelize.STRING(300)
      },
      
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('livros');
  }
};