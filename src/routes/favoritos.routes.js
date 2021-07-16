const {Router} = require("express")
const {adminRole} = require("../middleware/security.middleware")
const {validator} = require("../middleware/validators/favoritos.validator")
const {transformer} = require("../middleware/transformers/favoritos.transformer")
const controller = require("../controllers/favoritos.controller")

module.exports = (express) => {
    const route = new Router()
    route.post("/:id_usuario/favoritos", adminRole, validator, transformer, controller.create)
    route.delete("/:id_usuario/favoritos/:id_estudo", adminRole, controller.delete)
    route.get("/:id_usuario/favoritos", controller.index)

    express.use("/api/v1/usuarios", route)
}