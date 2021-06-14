'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.addIndex(
        'TitulosDestaque',
        ['data_inicio']
    )
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.removeIndex(
        'TitulosDestaque',
        ['data_inicio']
    );
  }
};
