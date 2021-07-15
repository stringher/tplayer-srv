const {Router} = require("express")
const {adminRole} = require("../middleware/security.middleware")
const {validator} = require("../middleware/validators/destaque-itens.validator")
const {transformer} = require("../middleware/transformers/destaque-itens.transformer")
const controller = require("../controllers/destaque-itens.controller")

module.exports = (express) => {
    const route = new Router()
    route.post("/:id_destaque/itens", adminRole, validator, transformer, controller.create)
    route.delete("/:id_destaque/itens/:id_estudo", adminRole, controller.delete)
    route.get("/:id_destaque/itens", controller.index)

    express.use("/api/v1/destaques", route)
}