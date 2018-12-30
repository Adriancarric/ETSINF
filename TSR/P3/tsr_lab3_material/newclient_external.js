// newclient_external in NodeJS, implicit verbose activation mode
// bkURL and classID must be provided as parameters
// node newclient_external brokerURL classID

var zmq = require('zmq')
, requester = zmq.socket('req');

var nMsgs=10;
var args = process.argv.slice(2);
if (args.length < 2) {
  console.log ("Usage: node newclient_external brokerURL classID");
  process.exit(-1);
}
var classID = args.pop();  // rest of argument processing will follow

var brokerURL = args[0];
var myID = args[1] || 'NONE';
var myMsg = args[2] || 'Hello';

if (myID != 'NONE')
  requester.identity = myID;
requester.connect(brokerURL);
console.log('Client (%s) with class "%s" connected to %s', myID, classID, brokerURL);

requester.on('message', function(msg) {
  console.log('Client (%s) has received reply "%s"', myID, msg.toString());
  if (--nMsgs == 0)
    process.exit(0);
  else {
    console.log('Client (%s) sending request "%s" of class "%s"', myID, myMsg, classID);
    requester.send([myMsg,classID]);
  }
});

console.log('Client (%s) sending first request "%s" of class "%s"', myID, myMsg, classID);
requester.send([myMsg,classID]);
