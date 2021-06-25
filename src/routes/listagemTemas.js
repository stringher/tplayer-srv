const {Router} = require('express');
const listagemTemasController = require('../controllers/listagemTemas');

module.exports = () => {
    const router = Router();
    router.get('/listagem-temas', listagemTemasController.getAll);

    return router;
}
