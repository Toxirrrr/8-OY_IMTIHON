import model from './../model/science.model.js'

const GET = async (req, res) => {
    try {
        const sciences = await model.GETSCINCE()
        return await res.status(200).json(sciences)
    } catch (error) {
        res.status(400).json(
            {
                status: 400,
                message: error.message
            }
        )
    }
}

export {
    GET
}