const Sequelize = require('sequelize');
require('dotenv').config()

// const mysql = require('mysql2')

// const db = mysql.createConnection(process.env.DATABASE_URL)
const db = new Sequelize('tdr-cotization-manager','9zxsikoc7x6svonav2m2','pscale_pw_G7qV1SA8M9ZkB2erqOuRrGD2PbW7V56tD9UN5i5DUB3',{
    host:'aws.connect.psdb.cloud',
    dialect:'mysql',
    port:'3306',
    dialectOptions: {
        ssl: {
          rejectUnauthorized: false 
        }
    }
})
module.exports = db
// const db = new Sequelize('process.env.DB_NAME','root','23937378D!',{
//     host:'127.0.0.1',
//     dialect:'mysql',
//     port:'3306',
// })
