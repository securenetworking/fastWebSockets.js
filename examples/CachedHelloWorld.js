/* Minimal SSL/non-SSL example using 5 seconds of HTTP cache */

const fWS = require('../dist/fws.js');
const port = 9001;

const app = fWS./*SSL*/App({
  key_file_name: 'misc/key.pem',
  cert_file_name: 'misc/cert.pem',
  passphrase: '1234'
}).get('/*', (res, req) => {
  res.end('Hello World!');
}, 5).listen(port, (token) => {
  if (token) {
    console.log('Listening to port ' + port);
  } else {
    console.log('Failed to listen to port ' + port);
  }
});
