import userModel from "../models/userModel.js";
import bcrypt from "bcryptjs";

// Metodo getAllUser extrae todos los usuarios de la base de datos
export const getAllUsers = async (req, res) => {
  try {
    const users = await userModel.findAll();
    res.json(users);
  } catch (error) {
    res.json({ message: error.message });
  }
};

// Metodo extrae un usuario por el email
export const getUser = async (req, res) => {
  try {
    const user = await userModel.findAll({
      where: {
        email_user: req.params.email_user,
      },
    });
    res.json(user[0]);
  } catch (error) {
    res.json({ message: error.message });
  }
};

// Metodo que crea un usuario en la base de datos
export const createUser = async (req, res) => {
  const saltRounds = 10;
  const plainPassword = req.body.user_password;
  try {
    const hashedPassword = await bcrypt.hash(plainPassword, saltRounds);
    await userModel.create({
      ...req.body,
      user_password: hashedPassword 
    });
    res.json({ message: "Usuario creado con éxito" });
  } catch (error) {
    console.error('Error creating user:', error);
    res.status(400).json({ message: 'Error creating user', error: error.message });
  }
};

// Metodo que actualiza el usuario
export const updateUser = async (req, res) => {
  try {
    const plainPassword = req.body.user_password; // Obtén la contraseña sin encriptar del cuerpo de la solicitud
    if (plainPassword) {
      const saltRounds = 10;
      const hashedPassword = await bcrypt.hash(plainPassword, saltRounds);
      req.body.user_password = hashedPassword; // Reemplaza la contraseña sin encriptar con la contraseña encriptada en el cuerpo de la solicitud
    }
    await userModel.update(req.body, {
      where: { email_user: req.params.email_user },
    });
    res.json({ message: "Usuario actualizado con éxito" });
  } catch (error) {
    res.json({ message: error.message });
  }
};

// Metodo que elimina un usuario de la base de datos
export const deleteUser = async (req, res) => {
  try {
    await userModel.destroy({
      where: { email_user: req.params.email_user },
    });
    res.json({ message: "Usuario eliminado con éxito" });
  } catch (error) {
    res.json({ message: error.message });
  }
};