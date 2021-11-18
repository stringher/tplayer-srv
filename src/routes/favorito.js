const express = require('express');
const favoritoController = require('../controllers/favorito.controller');
const router = express.Router();

router.post('/',favoritoController.addFavorito);
router.get('/:id',favoritoController.getByUserId);
router.delete('/', favoritoController.deleteFavorito);

module.exports = router;