const {Router} = require("express")
const {adminRole} = require("../middleware/security.middleware")
const {validator} = require("../middleware/validators/categorias.validator")
const {transformer} = require("../middleware/transformers/categorias.transformer")
const controller = require("../controllers/categorias.controller")

module.exports = (express) => {
    const route = new Router()
    route.post("/:id_grupo/categorias", adminRole, validator, transformer, controller.create)
    route.put("/:id_grupo/categorias/:id_categoria", adminRole, validator, transformer, controller.update)
    route.delete("/:id_grupo/categorias/:id_categoria", adminRole, controller.delete)
    route.get("/:id_grupo/categorias/:id_categoria", adminRole, controller.get)
    route.get("/:id_grupo/categorias", adminRole, controller.index)

    express.use("/api/v1/grupos", route)
}