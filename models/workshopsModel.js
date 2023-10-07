const db = require("../database/db.js"); 
const { DataTypes } = require("sequelize");

const workshopsModel = db.define('workshop', {
//Creacion del esquema de talleres para la base de datos
    id_workshop: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
        field: "id_workshop"
    },
    name_workshop:{
        type: DataTypes.STRING,
        allowNull: false,		
        field: "name_workshop"
    },
    description_workshop:{
        type: DataTypes.STRING,
        allowNull: true,		
        field: "description_workshop"
    },
    price_workshop:{
        type: DataTypes.FLOAT,
        allowNull: true,		
        field: "price_workshop"
    },
    capacity_workshop:{
        type: DataTypes.INTEGER,
        allowNull: true,		
        field: "capacity_workshop"
    },
    date_workshop:{
        type: DataTypes.DATE,
        allowNull: false,		
        field: "date_workshop"
    },
    status_workshop:{
        type: DataTypes.STRING,
        allowNull: false,		
        field: "status_workshop"
    },
    user_email:{
        type: DataTypes.STRING,
        allowNull: true,		
        field: "user_email"
    }

}, {freezeTableName: true, timestamps: false})

module.exports = workshopsModel