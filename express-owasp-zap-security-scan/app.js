const express = require('express');
const helmet = require('helmet');
const rateLimit = require('express-rate-limit');
const xss = require('xss');

const app = express();
const port = 3000;

app.use(express.json());

app.use(helmet());

const limiter = rateLimit({
  windowMs: 15 * 60 * 1000,
  max: 100
});

app.use(limiter);

app.get('/', (req, res) => {
  res.send('Secure Serverless-like App Running');
});

app.post('/process-data', (req, res) => {
  let { data } = req.body;

  if (!data) {
    return res.status(400).send('Data is required');
  }

  data = xss(data);

  res.send(`Processed secure data: ${data}`);
});

app.listen(port, () => {
  console.log(`Secure app running at http://localhost:${port}`);
});
