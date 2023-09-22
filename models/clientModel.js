import db from "../database/db.js";
import { DataTypes } from "sequelize";
import QuotationModel from "./quotationModel.js";

const ClientModel = db.define('CLIENTES', {

    id_cliente: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
        field: "ID_CLIENTE"
    },
    nombres_cliente: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "NOMBRES_CLIENTE"
    },
    apellidos_cliente: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "APELLIDOS_CLIENTE"
    },

    tipo_documento: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "TIPO_DOCUMENTO"
    },

    numero_documento: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "NUMERO_DOCUMENTO"
    },
    telefono: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "TELEFONO"
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "EMAIL"
    },
    estado_cliente: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "ESTADO_CLIENTE"
    }

})


export default ClientModel;