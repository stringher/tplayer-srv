const express = require('express');
const midiaController = require('../controllers/midia.controller');
const router = express.Router();

router.get('/', midiaController.listagemMidias)

module.exports = router;