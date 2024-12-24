import express from 'express';

const app = express();
const port = 3000;

app.get('/', (req, res) => {
    const randomNumber = Math.floor(Math.random() * 100);
    res.send(`Hello World! Here's a random number: ${randomNumber}`);
});

app.listen(port, () => {
    console.log(`App running at http://localhost:${port}`);
});