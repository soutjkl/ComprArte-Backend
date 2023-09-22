import db from "../database/db.js";
import { DataTypes } from "sequelize";

const userModel = db.define('USER', {
//Creacion del esquema de usuarios para la base de datos
    email: {
		type: DataTypes.STRING,
		allowNull: false,
		primaryKey: true,
		autoIncrement: true,
        field: "EMAIL"
	},
    name:{
        type: DataTypes.STRING,
		allowNull: false,		
        field: "NAME"
    },
    lastname:{
        type: DataTypes.STRING,
		allowNull: false,		
        field: "LASTNAME"
    },    
    password:{
        type: DataTypes.STRING,
		allowNull: false,		
        field: "PASSWORD"
    },
    rol:{
        type: DataTypes.STRING,
		allowNull: false,		
        field: "ROL"
    }
})

export default userModel
