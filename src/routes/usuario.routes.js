const {Router} = require("express");
const controller = require("../controllers/usuarios.controller")
const validators = require("../middleware/validators/usuario.validator")
const transformer = require("../middleware/transformers/usuario.transformer")

module.exports = (express) => {
    const router = new Router();
    router.get('/', controller.index )
    router.get(`/:id`, controller.get )
    router.post('/', validators.validateCreate, transformer, controller.create )
    router.put(`/:id`, validators.validateUpdate, transformer, controller.update )
    router.delete(`/:id`, controller.delete )

    express.use("/api/v1/usuarios", router)
}