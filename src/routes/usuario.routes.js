const {Router} = require("express");
const controller = require("../controllers/usuarios.controller")
const validators = require("../validators/usuario.validator")

module.exports = (express) => {
    const router = new Router();
    router.get('/', controller.index )
    router.get(`/:id`, controller.get )
    router.post('/', validators.validateCreate, controller.create )
    router.put(`/:id`, validators.validateUpdate, controller.update )
    router.delete(`/:id`, controller.delete )

    express.use("/api/v1/usuarios", router)
}