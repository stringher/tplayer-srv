const express = require('express');
const midiaController = require('../controllers/midia.controller');
const router = express.Router();

router.get('/', midiaController.listagemMidias)
router.get('/:id', midiaController.listagemMidiasById)

module.exports = router;