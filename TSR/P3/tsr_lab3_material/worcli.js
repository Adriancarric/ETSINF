// worcli
// invoked with "node worcli bk1URL bk2URL [myID [connText]] delay classID"
// 4 parameters are mandatory
var zmq = require('zmq')
, responder = zmq.socket('req')
, requester = zmq.socket('req');

var args = process.argv.slice(2);
if (args.length < 4) {
  console.log ("Usage: node worcli bk1URL bk2URL [myID [connText]] delay classID");
  console.log ("Redirects bk1’s classID requests to bk2 broker, increasing delay ms");
  process.exit(-1);
}
var classID = args.pop();
var delay = parseInt(args.pop()); // network delay, in ms
var beURL = args[0]; // worcli behaving like a worker for bk1
var feURL = args[1]; // worcli behaving like a client for bk2
var myID = args[2] || 'NONE';
var connText = args[3] || 'worcli'; // marking initial offering
var pendingClient;

if (myID != 'NONE') {
  responder.identity = myID;
  requester.identity = myID;
}
responder.connect(beURL);
requester.connect(feURL);

responder.on('message', function(client, delimiter, msg) {
  pendingClient = client; // only one waiting client, so we don't need a queue
  setTimeOut(function(){
    requester.send(msg);}, delay/2); // 50% forwarding
});

requester.on('message', function(msg) {
  setTimeOut(function(){
    responder.send([pendingClient,''].concat(msg));}, delay/2); // 50% returning
});

responder.send([connText,classID]);
