'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.addIndex('Tema', ["nome"]);
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.removeIndex('Tema', ["nome"]);
  }
};
