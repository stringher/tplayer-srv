const express = require('express');
const livroCapituloController = require('../controllers/livroCapitulo.controller');
const router = express.Router();

router.get('/', livroCapituloController.getLivros)
router.post('/capitulos', livroCapituloController.capsLivro)

module.exports = router;