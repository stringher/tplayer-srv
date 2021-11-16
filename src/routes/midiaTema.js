const express = require('express');
const midiaTemaController = require('../controllers/midiaTema.controller');
const router = express.Router();

router.post('/',midiaTemaController.addTemaMidia);            // Insere tema para determinada mídia
router.get('/',midiaTemaController.getAll);                   // Listagem de todas temas X mídias
router.get('/:id',midiaTemaController.getById);               // Listagem de mídias por tema
router.delete('/', midiaTemaController.deleteTemaMidia);

module.exports = router;