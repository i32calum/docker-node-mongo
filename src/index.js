const express = require('express');
require('./database');
const app = express();
app.listen(3000);
console.log('server on port' , 3000);