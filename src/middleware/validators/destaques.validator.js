module.exports = {
    validator: ({body: {titulo, data_ar}}, res, next) => {
        const erros = { }
        if (! titulo || titulo.length < 3 || titulo.length > 100) {
            erros.titulo = 'Campo obrigatório. Deve conter entre 3 e 100 caracters'
        }

        if (! data_ar || (! /^20[0-9]{2}-[0-1][0-9]-[0-3][0-9]T[0-2][0-9]:[0-5][0-9]:[0-5][0-9][zZ]|([\+\-][0-2][0-9]:[0-5][0-9])$/.test(data_ar))) {
            erros.data_ar = 'Campo obrigatório. Formato: yyyy-MM-dd"T"hh:mm:ss-hh:MM. Ex: 2021-07-14T13:15:00-03:00 (Horário de Brasilia, por exemplo)'
        }

        if (Object.keys(erros).length === 0) {
            next()
        } else {
            res.statusCode = 400
            res.json(erros)
        }
    }
}