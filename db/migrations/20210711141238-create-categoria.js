'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable({tableName:'Categorias', schema: 'player'}, {
      id_categoria: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
        comment: 'Identificador do registro'
      },
      nome: {
        type: Sequelize.STRING(100),
        allowNull: false,
        comment: 'Nome da Categoria'
      },
      ordem: {
        type: Sequelize.INTEGER,
        allowNull: true,
        comment: 'Ordem da categoria dentro do grupo'
      },
      ativo: {
        type: Sequelize.BOOLEAN,
        allowNull: false,
        comment: 'Registro está ativo ou não'
      },
      id_grupo: {
        type: Sequelize.INTEGER,
        references: {
          model: {
            tableName: 'Grupos',
            schema: 'player'
          },
          key: 'id_grupo'
        },
        allowNull: false,
        comment: 'Grupo ao qual pertence'
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
    });
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable({tableName:'Categorias', schema: 'player'});
  }
};