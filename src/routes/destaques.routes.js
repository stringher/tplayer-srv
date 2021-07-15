const {Router} = require("express")
const {adminRole} = require("../middleware/security.middleware")
const {validator} = require("../middleware/validators/destaques.validator")
const {transformer} = require("../middleware/transformers/destaques.transformer")
const controller = require("../controllers/destaques.controller")

module.exports = (express) => {
    const route = new Router()
    route.post("/", adminRole, validator, transformer, controller.create)
    route.put("/:id_destaque", adminRole, validator, transformer, controller.update)
    route.delete("/:id_destaque", adminRole, controller.delete)
    route.get("/:id_destaque", controller.get)
    route.get("/", controller.index)

    express.use("/api/v1/destaques", route)
}