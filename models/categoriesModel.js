import db from "../database/db.js";

import { DataTypes } from "sequelize";

const categoriesModel = db.define('CATEGORY', {

    id_categorie: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
        field: "id_category"
    },
    name_categorie: {
        type: DataTypes.STRING,
        allowNull: false,
        field: "name_category"
    }

})

export default categoriesModel