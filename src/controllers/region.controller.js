import model from './../model/region.model.js'

const GET = async (req, res) => {
    const region = await model.GETREGION()
    return await res.status(200).json(region)
}

export {
    GET
}