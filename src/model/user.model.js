import { fetch, fetchAll } from "../utils/pg.js"

const GETUSER = async () => {
    return await fetchAll(`select user_id, username, gender, created_at, deleted_at, updated_at  from users;`)
}

const POSTUSER = async ({ username, password }) => {
    return await fetch('INSERT INTO users(username, password, gender) VALUES ($1, $2, $3) returning *', [username, password, gender])
}

const LOGINUSER = async ({ username, password, gender }) => {
    return await fetch(`select * from users where username = $1 and password = $2`,[username, password])
}

export default {
    GETUSER,
    POSTUSER,
    LOGINUSER
}