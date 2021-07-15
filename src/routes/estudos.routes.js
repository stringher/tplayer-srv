const {Router} = require("express")
const {adminRole} = require("../middleware/security.middleware")
const {validator} = require("../middleware/validators/estudos.validator")
const {insertTransformer, updateTransformer} = require("../middleware/transformers/estudos.transformer")
const controller = require("../controllers/estudos.controller")

var multer  = require('multer')

var upload = multer({
    dest: 'data/uploads/' ,
    limits:  { fieldSize: 30 * 1024 * 1024 }
})

module.exports = (express) => {
    const route = new Router()
    route.get("/:id_grupo/categorias/:id_categoria/estudos", controller.index)
    route.post("/:id_grupo/categorias/:id_categoria/estudos", adminRole, upload.single('estudo'), validator,
        insertTransformer, controller.create)
    route.put("/:id_grupo/categorias/:id_categoria/estudos/:id_estudo", adminRole, validator, updateTransformer,
        controller.update)
    route.delete("/:id_grupo/categorias/:id_categoria/estudos/:id_estudo", adminRole, controller.delete)
    route.get("/:id_grupo/categorias/:id_categoria/estudos/:id_estudo", controller.get)

    express.use("/api/v1/grupos", route)
}