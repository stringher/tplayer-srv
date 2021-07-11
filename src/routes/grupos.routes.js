const {Router} = require("express")
const {adminRole} = require("../middleware/security.middleware")
const {validator} = require("../middleware/validators/grupos.validator")
const {transformer} = require("../middleware/transformers/grupos.transformer")
const controller = require("../controllers/grupos.controller")

module.exports = (express) => {
    const route = new Router()
    route.post("/", adminRole, validator, transformer, controller.create)
    route.put("/:id_grupo", adminRole, validator, transformer, controller.update)
    route.delete("/:id_grupo", adminRole, controller.delete)
    route.get("/:id_grupo", adminRole, controller.get)
    route.get("/", adminRole, controller.index)

    express.use("/api/v1/grupos", route)
}