const env = process.env.NODE_ENV || 'development';

const dados = {
    development: {
        jwtPass: 'VerySecret',
        admin: {
            user: 'root',
            password: '123456'
        }
    },
    test:{
        jwtPass: 'MonDieu, que secreto',
        admin: {
            user: 'root',
            password: '123456'
        }
    },
    production : {
        jwtPass: process.env.JWT_PASS || 'SouSereto',
        admin: {
            user: process.env.SYSTEM_ROOT_USER || 'admin',
            password: process.env.SYSTEM_ROOT_PASS || 'v4tuompvu70@#zsdr!@'
        }

    }
}

module.exports = dados[env];