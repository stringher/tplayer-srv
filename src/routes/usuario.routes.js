const  { Router } = require("express");
const usuarioController = require("../controllers/usuario.controller");
const validacoes = require("../validations/usuarios.validations")()

module.exports = () => {
    const routes = new Router();
    routes.post("/usuarios", validacoes.criacaoUsuario, usuarioController.create);
    return routes;
}
