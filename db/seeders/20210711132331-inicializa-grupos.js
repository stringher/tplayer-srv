'use strict';


module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert(
        {schema: 'player', tableName: 'Grupos'},[
          {
            id_grupo: 1,
            nome: "Velho Testamento",
            ativo: true,
            createdAt: new Date(),
            updatedAt: new Date()
          },
          {
            id_grupo: 2,
            nome: "Novo Testamento",
            ativo: true,
            createdAt: new Date(),
            updatedAt: new Date()
          }
        ]
    )
  },

  down: async (queryInterface, Sequelize) => {
    const { Op } = Sequelize;
    await queryInterface.bulkDelete(
        {schema: 'player', tableName: 'Grupos'},
        {
        [Op.or]: [
          {id_grupo:1},
          {id_grupo:2}
        ]
    })
  }
};
