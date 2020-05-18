const express = require("express");
const app = express();

app.get('/firstGetMethod/v1',
    (req,res) =>{
        res.send("My very first get nodejs method, say hello to my little frind perrines! version 1");
    }
);


app.listen(7080,
    ()=>{
        console.log('Starting the listener');
        console.log('Started... READY FOR THE ROCK...');
    }
);
