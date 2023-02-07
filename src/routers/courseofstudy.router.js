import { Router } from "express";
import { GET } from "../controllers/courseofstudy.controller.js";


const router = Router()

router.get('/courseofstudy', GET)


export default router