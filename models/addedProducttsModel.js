import db from "../database/db.js";

import { DataTypes } from "sequelize";

const AddedProductsModel = db.define('PRODUCTOS_AGREGADOS', {

    id_cotizacion: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: false,
        field: "ID_COTIZACION"
    },
    id_producto: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: false,
        field: "ID_PRODUCTO"
    },
    cantidad_producto: {
        type: DataTypes.INTEGER,
        allowNull: false,
        field: "CANTIDAD_PRODUCTO"
    }

}, {primaryKey: ['id_cotizacion', 'id_producto']})

export default AddedProductsModel