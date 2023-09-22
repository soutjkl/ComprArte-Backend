import db from "../database/db.js";
import { DataTypes } from "sequelize";
import ClientModel from "./clientModel.js";

const QuotationModel = db.define('COTIZACIONES', {

    id_cliente: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: false,
        field: "ID_CLIENTE"
    },
    id_cotizacion: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
        field: "ID_COTIZACION"
    },
    numero_cotizacion: {
        type: DataTypes.STRING,
        allowNull: true,
        field: "NUMERO_COTIZACION"
    },

    fecha_cotizacion: {
        type: DataTypes.DATE,
        allowNull: false,
        field: "FECHA_COTIZACION"
    },

    subtotal: {
        type: DataTypes.FLOAT,
        allowNull: false,
        field: "SUBTOTAL"
    },
    total: {
        type: DataTypes.FLOAT,
        allowNull: false,
        field: "TOTAL"
    },
    estado_cotizacion: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "ESTADO_COTIZACION"
    }

})


export default QuotationModel