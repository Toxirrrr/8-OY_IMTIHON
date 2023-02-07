import model from './../model/courseofstudy.model.js'

const GET = async (req, res) => {
    try {
        const courseofstudy = await model.GETCOURSEOFSTUDY()
        return await res.status(200).json(courseofstudy)
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