const express = require('express');

const tituloDestaqueController = require('../controllers/titulo-destaque/tituloDestaque.controller');

const router = express.Router();

const { valid_tituloDestaque } = require('../validations/tituloDestaque');

//= ===============================
// Títulos em Destaque routes
//= ===============================

router.post(
    '/titulos-destaque',
    valid_tituloDestaque,
    tituloDestaqueController.create,
);

router.get(
    '/titulo-destaque/:id',
    tituloDestaqueController.getById
);

router.get(
    '/titulos-destaque',
    tituloDestaqueController.getTopByDataInicioDesc
);

router.delete(
    '/titulo-destaque/:id',
    tituloDestaqueController.destroy
);

module.exports = () => {
    return router;
};
