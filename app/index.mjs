import { createRequire } from 'module';
const require = createRequire(import.meta.url);
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);


const express = require('express');
const path = require('path');

const app = express();
app.use("/public", express.static(path.join(__dirname, 'public')));
app.set('views', path.join(__dirname, '/views'));
app.set('view engine', 'ejs');


// set HTML file as a response 
app.get('/', (req, res) => {
    res.render(__dirname + "/views/index.ejs");
});

app.listen(3000);
console.log('its running')