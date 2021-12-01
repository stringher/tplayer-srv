const express = require('express');
const adminController = require('../controllers/admin.controller');
const router = express.Router();

router.post('/cadastro',adminController.cadastroAdm)
router.post('/login', adminController.loginAdm)

module.exports = router;