const Sequelize = require('sequelize');
require('dotenv').config()

// const mysql = require('mysql2')

// const db = mysql.createConnection(process.env.DATABASE_URL)
const db = new Sequelize('tdr-cotization-manager','bj8il9mt61ezysl0zf8m','pscale_pw_OsPIM3QM01n4FBUmJT8i4Pm8HU4ztEAFWKl4frpDpfv',{
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