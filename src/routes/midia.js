const express = require('express');
const midiaController = require('../controllers/midia.controller');
const router = express.Router();

router.post('/', midiaController.uploadMidia)
router.get('/livro_cap_midia', midiaController.getLivroCapMidia)
router.get('/midia_capitulo', midiaController.getMidiaCap)
router.delete('/', midiaController.deleteMidiaLivCap)
router.get('/', midiaController.listagemMidias)
router.get('/:id', midiaController.listagemMidiasById)

module.exports = router;