const db = require("../database/db")
const { DataTypes } = require("sequelize")
const QuotationModel = require("./quotationModel.js")

const clientModel = db.define('customer', {

    id_customer: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
        field: "id_customer"
    },
    name_customer: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "name_customer"
    },
    lastname_customer: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "lastname_customer"
    },
    document_type: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "document_type"
    },
    number_document: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "number_document"
    },
    number_phone: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "number_phone"
    },
    email_customer: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "email_customer"
    },
    status_customer: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "status_customer"
    }

}, {freezeTableName: true, timestamps: false})

module.exports =  clientModel;