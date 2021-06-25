module.exports = {
    hasItems(obj) {
        for(key in obj) {
            if (obj.hasOwnProperty(key))
                return true;
        }
        return false;
    },

    checaObrigatorios(listaCampos, obj) {
      let faltando = {}
      for(let campo of listaCampos) {
          if (obj[campo] === undefined || obj[campo] === null) {
              faltando[campo] = ["Campo obrigatório"]
          }
      }
      return faltando;
    }
}
