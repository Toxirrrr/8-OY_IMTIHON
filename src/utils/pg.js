import pg from 'pg'

const pool = new pg.Pool(
    {
        user: 'postgres',
        database: 'dtm',
        password: '0614',
        host: 'localhost'
    }
)


async function fetchAll(SQL, params = []) {
    const client = await pool.connect()
    try {
        const { rows } = await client.query(SQL, params)
        return rows
    } catch (error) {
        throw new Error('db error: ' + error.message)
    }finally{
        client.release()
    }
}


async function fetch(SQL, params = []) {
    const client = await pool.connect()
    try {
        const { rows: [row] } = await client.query(SQL, params)
    } catch (error) {
        throw new Error('db error: ' + error.message)
    }finally{
        client.release()
    }
}


export {
    fetchAll,
    fetch
}