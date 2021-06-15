'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.addIndex('Midia', ["nome"]);
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.removeIndex('Midia', ["nome"]);
  }
};
