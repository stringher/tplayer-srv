const fs = require("fs/promises")

const ESTUDO_AUDIO = 0

const dirs = [
    "data/storage/estudos/audio/",
]

function finalPath(id, type){
    return dirs[type] + id;
}

module.exports = {
    gravaAudio(origin, id_estudo) {
        return fs.rename(origin, finalPath(id_estudo, ESTUDO_AUDIO))
    },
}