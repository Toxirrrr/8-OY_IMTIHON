import { Router } from "express"
import { GET } from "../controllers/sciences.controller.js"

const router = Router()

router.get('/sciences', GET)


export default router