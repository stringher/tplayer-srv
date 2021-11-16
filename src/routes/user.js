const express = require('express');
const userController = require('../controllers/user.controller');
const router = express.Router();

router.post('/cadastro',userController.cadastro);
router.post('/login', userController.login)

module.exports = router;