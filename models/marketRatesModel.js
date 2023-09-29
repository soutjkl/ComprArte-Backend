const { DataTypes } = require("sequelize")
const db =  "../database/db.js";

const marketRatesModel = db.define("MARKET_RATES", {
    id_quote: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        field: "id_quote"
      },
      number_quote: {
        type: DataTypes.STRING(30),
        field: "number_quote"
      },
      date_quote: {
        type: DataTypes.DATE,
        allowNull: false,
        field: "date_quote"
      },
      subtotal_quote: {
        type: DataTypes.DECIMAL(18, 2),
        allowNull: false,
        field: "subtotal_quote"
      },
      total_quote: {
        type: DataTypes.DECIMAL(18, 2),
        allowNull: false,
        field: "total_quote"
      },
      status_quote: {
        type: DataTypes.STRING(2),
        allowNull: false,
        field: "status_quote"
      },
      id_customer: {
        type: DataTypes.INTEGER,
        allowNull: false,
        field: "id_customer"
      },
      email_user: {
        type: DataTypes.STRING(60),
        allowNull: false,
        field: "email_user"
      }
    })
    

module.exports =  marketRatesModel