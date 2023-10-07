const db = require("../database/db")
const { DataTypes } = require("sequelize")

const AddedProductsModel = db.define('ADDED_PRODUCTS', {

    id_quote: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: false,
        field: "id_quote"
    },
    id_product: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: false,
        field: "id_product"
    },
    id_workshop: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        field: "id_workshop"
    },
    quantity_products: {
        type: DataTypes.INTEGER,
        allowNull: false,
        field: "quantity_products"
    }

}, {primaryKey: ['id_quotation', 'id_product', 'id_workshop']})

module.exports = AddedProductsModel