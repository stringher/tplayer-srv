const express = require('express');
const listagemTemasController = require('../controllers/listagemTemas');
const router = express.Router();

router.get('/',listagemTemasController.getAll);

module.exports = router;