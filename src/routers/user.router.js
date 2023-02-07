import { Router } from "express"
import { GET, REGISTER, LOGIN } from "../controllers/user.controller.js"

const router = Router()

router.get('/users', GET)
router.post('/register', REGISTER)
router.post('/login', LOGIN)


export default router