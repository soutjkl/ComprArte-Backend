import db from "../database/db.js";

import { DataTypes } from "sequelize";

const ProductModel = db.define('PRODUCTOS', {

    id_product: {
		type: DataTypes.INTEGER,
		allowNull: false,
		primaryKey: true,
		autoIncrement: true,
        field: "ID_PRODUCTO"
	},
    categoria:{
        type: DataTypes.INTEGER,
		allowNull: true,			
        field: "ID_CATEGORIA"
    },

    nombre_producto:{
        type: DataTypes.STRING,
		allowNull: false,		
        field: "NOMBRE_PRODUCTO"
    },

    descripcion :{
        type: DataTypes.STRING,
		allowNull: true,		
        field: "DESCRIPCION"
    },
    cantidad:{
        type: DataTypes.INTEGER,
		allowNull: false,		
        field: "CANTIDAD"
    },
   
    referencia_producto:{
        type: DataTypes.STRING,
		allowNull: false,		
        field: "REFERENCIA_PRODUCTO"
    },

    precio_unitario:{
        type: DataTypes.FLOAT,
		allowNull: false,		
        field: "PRECIO_UNITARIO"  
    },
    
    imagen_producto:{
        type: DataTypes.STRING,
		allowNull: true,		
        field: "IMAGEN_PRODUCTO"
    },
    
    estado:{
        type: DataTypes.CHAR,
		allowNull: false,		
        field: "ESTADO_PRODUCTO"
    }
    
})

export default ProductModel