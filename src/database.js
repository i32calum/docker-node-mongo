const mongoose = require('mongoose');

mongoose.connect('mongodb://mongodb/mydatebase',{
    useNewUrlParser: true,
    useUnifiedTopology: true
})
.then(db => console.log('DB is connected to -> ', db.connection.host))
.catch(err => console.error('Error: ', err));