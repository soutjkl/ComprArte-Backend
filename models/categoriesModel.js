const db = require("../database/db");
const { DataTypes } = require("sequelize");

const categoriesModel = db.define('category', {

    id_category: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
        field: "id_category"
    },
    name_category: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "name_category"
    }

}, {
    freezeTableName: true,
    timestamps: false // Aquí debes poner las opciones juntas en un solo objeto
});

module.exports = categoriesModel;
