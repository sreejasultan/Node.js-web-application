const express = require('express');

const app = express();

const PORT = 3000;

app.get('/', (req, res) => {
    res.send(`
        <h1>Welcome to Node.js Application!</h1>
        <h2>DevOps CI/CD Practice Project</h2>
        <p>Application is running successfully.</p>
    `);
});

app.get('/health', (req, res) => {
    res.json({
        status: 'UP',
        message: 'Application is healthy'
    });
});

app.listen(PORT, '0.0.0.0', () => {
    console.log(`Server running on port ${PORT}`);
});
