'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable({tableName: 'Estudos', schema: 'player'}, {
      id_estudo: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
        comment: 'Identificador do registro'
      },
      titulo: {
        type: Sequelize.STRING(255),
        allowNull: false,
        commnt: 'Titulo do estudo a ser apresentado'
      },
      arquivo: {
        type: Sequelize.STRING(255),
        allowNull: false,
        commnt: 'Nome do arquivo'
      },
      media_type: {
        type: Sequelize.STRING(100),
        allowNull: false,
        commnt: 'Tipo da midia, vai ser apresentado no content-type da resposta'
      },
      duracao: {
        type: Sequelize.INTEGER,
        allowNull: false,
        comment: 'Duração do estudo'
      },
      ordem: {
        type: Sequelize.INTEGER,
        allowNull: true,
        comment: 'Ordem de apresentação'
      },
      ativo: {
        type: Sequelize.BOOLEAN,
        allowNull: false,
        comment: 'Se o registro está ativo e deve se apresentado'
      },
      id_categoria: {
        type: Sequelize.INTEGER,
        allowNull: false,
        references: {
          model: {
            tableName: 'Categorias',
            schema: 'player'
          },
          key: 'id_categoria'
        },
        comment: 'Categoria ao qual pertence'
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
    await queryInterface.dropTable({tableName: 'Estudos', schema: 'player'});
  }
};