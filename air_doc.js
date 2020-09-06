

var request = require('request');
const fs = require('fs');
request('http://140.128.87.192/NCUTair/ShowAllLast', function (error, response, body) {
if (!error && response.statusCode == 200) {
console.log(body);
}
request('http://140.128.87.192/NCUTair/ShowAllLast').pipe(fs.createWriteStream('AIR.txt'));
})
