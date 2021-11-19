const express = require('express');
const temaController = require('../controllers/tema.controller');
const router = express.Router();

// router.post('/',temaController.criaTema)    OBS: Criação de tema foi para midiaTema.controller (criação de temas + Mídias)
router.get('/', temaController.listagemTemas)
router.delete('/:id', temaController.apagaTema)

module.exports = router;