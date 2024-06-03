const express = require("express");
const cors = require('cors')

const app = express();
app.use(cors());

data = [ { "id": 1, name: "Sasha", password: "1234" },
    { "id": 2, name: "Ihor", password: "1234" },
    { "id": 3, name: "Vitaliy", password: "1234" }]

app.get("/users", async(req, res) => {
    res.send(data);
})

app.listen(5000, err => {
    if (err) {
        console.log(err.what());
    } else {
        console.log("Server is running on port 5000!")
    }
})