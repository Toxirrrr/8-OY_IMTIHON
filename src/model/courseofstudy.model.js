import { fetchAll } from "../utils/pg.js";

const GETCOURSEOFSTUDY = async () => {
    return await fetchAll(`select * from courseofstudy;`)
}


export default {
    GETCOURSEOFSTUDY
}