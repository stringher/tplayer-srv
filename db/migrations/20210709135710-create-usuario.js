'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable({tableName: 'Usuarios', schema: 'player'}, {
      id_usuario: {
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
        comment: 'Identificador do registro'
      },
      nome: {
        type: Sequelize.STRING(100),
        length: 100,
        allowNull: false,
        comment: 'Nome do Usuário'
      },
      email: {
        type: Sequelize.STRING(255),
        length: 255,
        allowNull: false,
        unique: true,
        comment: 'Email do Usuário'
      },
      senha: {
        type: Sequelize.STRING(100),
        length: 100,
        allowNull: false,
        comment: 'Hash da senha'
      },
      nascimento: {
        type: Sequelize.DATEONLY,
        comment: 'Data de Nascimento o usuário'
      },
      sexo: {
        type: Sequelize.INTEGER,
        comment: 'Sexo. 1 = Masculino, 2 = Feminino'
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE,
        comment: 'Data de Criação'
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE,
        comment: 'Data de alteração'
      }
    }
    );
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable({tableName: 'Usuarios', schema: 'player'});
  }
};