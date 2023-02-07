import model from './../model/user.model.js'

const GET = async (req, res) => {
    try {
        const users = await model.GETUSER()
        return await res.status(200).send(users)
    } catch (error) {
        res.status(400).json(
            {
                status: 400,
                message: error.message
            }
        )
    }
}

const REGISTER = async (req, res) => {
    try {
        const users = await model.POSTUSER(req.body)
        await res.status(201).json(
            {
                status: 201,
                message: 'succes created',
                data: users
            }
        )

    } catch (error) {
        res.status(201).json(
            {
                status: 201,
                message: error.message
            }
        )
    }
}


const LOGIN = async (req, res) => {
    try {
        const users = await model.LOGINUSER(req.body)
        await res.status(200).json(
            {
                status: 201,
                message: 'login succesful',
                data: users
            }
        )

    } catch (error) {
        res.status(200).json(
            {
                status: 201,
                message: error.message
            }
        )
    }
}




export {
    GET,
    REGISTER,
    LOGIN
}