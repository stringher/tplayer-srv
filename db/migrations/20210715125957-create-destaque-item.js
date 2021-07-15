'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable({ tableName: 'DestaqueItens', schema: 'player'}, {
      id_destaque: {
        type: Sequelize.INTEGER,
        allowNull: false,
        primaryKey: true,
        references: {
          model: "Destaques",
          schema: "player",
          key: "id_destaque"
        },
        comment: 'Identificador do destaque'
      },
      id_estudo: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        allowNull: false,
        references: {
          model: "Estudos",
          schema: "player",
          key: "id_estudo"
        },
        comment: 'Identificador do estudo'
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable({ tableName: 'DestaqueItens', schema: 'player'});
  }
};