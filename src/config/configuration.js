const env = process.env.NODE_ENV || 'development';

const dados = {
    development: {
        jwtPass: 'VerySecret'
    },
    test:{
        jwtPass: 'MonDieu, que secreto'
    },
    production : {
        jwtPass: process.env.JWT_PASS || 'SouSereto'

    }
}

module.exports = dados[env];