import { fetchAll } from "../utils/pg.js";

const GETSCINCE = async () => {
    return await fetchAll(`select * from sciences;`)
}


export default {
    GETSCINCE
}