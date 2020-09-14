const express=require('express');
const request = require('request');
const app=express();
const port=3000;
request('http://140.128.87.192/NCUTair/ShowAllLast',(error, response, body)=>{
    var js=JSON.parse(body)
            
    if (!error && response.statusCode == 200) {
        app.get('/',(req,res,next)=>{
            res.setHeader("Content-Type","application/json");
            res.setHeader('Access-Control-Allow-Origin', '*');
            res.send(body);
            next();
        });
        app.get('/0',(req,res,next)=>{
            res.setHeader("Content-Type","application/json");
            res.setHeader('Access-Control-Allow-Origin', '*');
            res.send(js[0]);
            next();
        });
        app.get('/1',(req,res,next)=>{
            res.setHeader("Content-Type","application/json");
            res.setHeader('Access-Control-Allow-Origin', '*');
            res.send(js[1]);
            next();
        });
    }
}); 
app.listen(port,()=>{
    console.log(`Listening at http://localhost:${port}`);
});










    



