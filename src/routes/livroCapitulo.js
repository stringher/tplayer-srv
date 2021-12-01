const express = require('express');
const livroCapituloController = require('../controllers/livroCapitulo.controller');
const router = express.Router();

router.get('/', livroCapituloController.getLivros)
router.get('/capitulos', livroCapituloController.getCapitulos)
router.get('/capitulos_livro', livroCapituloController.getCapitulosByLivro)

module.exports = router;