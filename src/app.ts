import express from 'express'

const app = express()


app.get('/', (req, res) => {
    res.send("okk")
})

app.listen(process.env.PORT, () => console.log("running on app:2727"))
