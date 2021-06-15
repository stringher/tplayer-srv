'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.addIndex(
        'TitulosDestaque',
        ['titulo']
    )
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.removeIndex(
        'TitulosDestaque',
        ['titulo']
    );
  }
};
