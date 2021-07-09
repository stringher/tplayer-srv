function update({ body: { nome, email, senha, nascimento, sexo} }, res, next, isUpdate){
    const erros = { }
    if (! nome || typeof nome !== 'string') {
        erros.nome = "Nome não pode ser nulo ou vazio"
    }
    else if (nome.length < 3) {
        erros.nome = "Nome deve ter pelo menos 3 caracteres"
    }

    if (! email || ! /^[A-Za-z][\w\d\.\-]+@([a-z\d]+\.)+[a-z]+$/.test(email)) {
        erros.email = "Email inválido"
    }

    if (isUpdate) {
        // Senha nao eh obrigatoria nos updates
        if (senha && typeof senha !== 'string'  && senha.length < 8) {
            erros.senha = "Senha deve ter pelo menos 8 caracteres"
        }
    } else {
        if (! senha && typeof senha !== 'string') {
            erros.senha = "A senha ẽ obrigatória"
        } else if (senha.length < 8) {
            erros.senha = "Senha deve ter pelo menos 8 caracteres"
        }
    }
    if (typeof(sexo) !== "undefined" && sexo !== null) {
        const vSexo = +sexo;
        console.log(`sexo: ${vSexo}`)
        if (vSexo < 1 || vSexo > 2)
            erros.sexo = "Valores de sexo inválidos"
    }
    if(nascimento) {
        if (! /^[0-9]{4}\-[0-9]{2}\-[0-9]{2}$/.test(nascimento)) {
            erros.nascimento = "Data invãlida. Formato permitido: yyyy-mm-dd"
        } else {
            const spl = nascimento.split(/\-/)
            const dia = +spl[2], mes = +spl[1], ano = +spl[0]
            if (dia < 1 || dia > ((mes === 2) ? 28 : (((mes -1) % 7) % 2 == 0 ? 31 : 30 ))) {
                erros.nascimento = "Data inválida."
            }
        }
    }

    if (erros != { }) {
        res.statusCode = 400
        res.json(erros)
    } else next();
}

module.exports = {
    validateCreate: (req, res, next) => update(req, res, next, false),
    validateUpdate: (req, res, next) => update(req, res, next, true)
}