const express = require('express');

const tituloDestaqueController = require('../controllers/titulo-destaque/tituloDestaque.controller');

const router = express.Router();

const { valid_tituloDestaque } = require('../validations/tituloDestaque');

//= ===============================
// Títulos em Destaque routes
//= ===============================

router.post(
    '/',  
    valid_tituloDestaque,
    tituloDestaqueController.create,
);

router.get(
    '/:id',
    tituloDestaqueController.getById
);

router.get(
    '/',
    tituloDestaqueController.getTopByDataInicioDesc
);

router.delete(
    '/:id',
    tituloDestaqueController.destroy
);

module.exports = router;