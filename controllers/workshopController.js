// controllers/workshopController.js
const Workshop = require("../models/Workshop")

// Create a new workshop
export const createWorkshop = async (req, res) => {
  try {
    const workshop = await Workshop.create(req.body);
    return res.status(201).json(workshop);
  } catch (error) {
    return res.status(400).json({ error: "Failed to create workshop" });
  }
};

// Retrieve all workshops
export const getAllWorkshops = async (req, res) => {
  try {
    const workshops = await Workshop.findAll();
    return res.status(200).json(workshops);
  } catch (error) {
    return res.status(500).json({ error: "Internal server error" });
  }
};

// Retrieve a workshop by ID
export const getWorkshopById = async (req, res) => {
  const { id } = req.params;
  try {
    const workshop = await Workshop.findByPk(id);
    if (!workshop) {
      return res.status(404).json({ error: "Workshop not found" });
    }
    return res.status(200).json(workshop);
  } catch (error) {
    return res.status(500).json({ error: "Internal server error" });
  }
};

// Update a workshop by ID
export const updateWorkshopById = async (req, res) => {
  const { id } = req.params;
  try {
    const [updated] = await Workshop.update(req.body, {
      where: { id_workshop: id },
    });
    if (updated) {
      const updatedWorkshop = await Workshop.findByPk(id);
      return res.status(200).json(updatedWorkshop);
    }
    return res.status(404).json({ error: "Workshop not found" });
  } catch (error) {
    return res.status(500).json({ error: "Internal server error" });
  }
};

// Delete a workshop by ID
export const deleteWorkshopById = async (req, res) => {
  const { id } = req.params;
  try {
    const deleted = await Workshop.destroy({
      where: { id_workshop: id },
    });
    if (deleted) {
      return res.status(204).send();
    }
    return res.status(404).json({ error: "Workshop not found" });
  } catch (error) {
    return res.status(500).json({ error: "Internal server error" });
  }
};
