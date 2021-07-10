const {Router} = require("express");
const controller = require("../controllers/usuarios.controller")
const validators = require("../middleware/validators/usuario.validator")
const transformer = require("../middleware/transformers/usuario.transformer")
const {sameUserOrAdminRole, adminRole} = require("../middleware/security.middleware")

module.exports = (express) => {
    const router = new Router();

    router.get('/', adminRole, controller.index )
    router.get(`/:id_usuario`, sameUserOrAdminRole, controller.get )
    router.post('/', validators.validateCreate, transformer, controller.create )
    router.put(`/:id_usuario`, sameUserOrAdminRole, validators.validateUpdate, transformer, controller.update )
    router.delete(`/:id_usuario`, sameUserOrAdminRole, controller.delete )

    express.use("/api/v1/usuarios", router)
}