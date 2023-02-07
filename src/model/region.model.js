import { fetchAll } from "../utils/pg.js";

const GETREGION = async () => {
    return await fetchAll(`select * from regions;`)
}


export default {
    GETREGION
}