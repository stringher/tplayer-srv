'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable({tableName: 'Usuarios', schema: 'player'}, {
      id_usuario: {
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      nome: {
        type: Sequelize.STRING(100),
        length: 100,
        allowNull: false
      },
      email: {
        type: Sequelize.STRING(255),
        length: 255,
        allowNull: false,
        unique: true
      },
      senha: {
        type: Sequelize.STRING(100),
        length: 100,
        allowNull: false
      },
      nascimento: {
        type: Sequelize.DATEONLY
      },
      sexo: {
        type: Sequelize.INTEGER
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    }
    );
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable({tableName: 'Usuarios', schema: 'player'});
  }
};