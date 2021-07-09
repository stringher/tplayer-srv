'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createSchema('player');
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropSchema('player');
  }
};
