import  express from "express";
import { getGoogleToken } from "../controllers/autenticationDrive.js";

// Ruta Token Google
router.get('/auth/googleapi', getGoogleToken)