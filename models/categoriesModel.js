import db from "../database/db.js";

import { DataTypes } from "sequelize";

const CategoriesModel = db.define('CATEGORIAS', {

    id_categoria: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
        field: "ID_CATEGORIA"
    },
    nombre_categoria: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "NOMBRE_CATEGORIA"
    }

})

export default CategoriesModel