import { Router } from "express";
import { GET } from "../controllers/region.controller.js";


const router = Router()

router.get('/regions', GET)


export default router