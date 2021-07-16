'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable({tableName: 'Favoritos', schema: 'player'}, {
      id_estudo: {
        allowNull: false,
        primaryKey: true,
        type: Sequelize.INTEGER,
        references: {
          model: "Estudos",
          schema: "player",
          key: "id_estudo"
        },
        comment: 'Identificador do estudo'
      },
      id_usuario: {
        allowNull: false,
        primaryKey: true,
        type: Sequelize.INTEGER,
        references: {
          model: "Usuarios",
          schema: "player",
          key: "id_usuario"
        },
        comment: 'Identificador do usuário'
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE,
        comment: 'Data de Criação'
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable({tableName: 'Favoritos', schema: 'player'});
  }
};