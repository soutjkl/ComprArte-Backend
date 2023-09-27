import db from "../database/db.js";

import { DataTypes } from "sequelize";

const categoriesModel = db.define('CATEGORY', {

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

})

export default categoriesModel