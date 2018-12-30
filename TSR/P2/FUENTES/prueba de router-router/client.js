const zmq = require('zmq')
let req = zmq.socket('req');
process.argv.shift()
process.argv.shift()
let urlback = process.argv.shift()
console.log(urlback)
let nick = process.argv.shift()
console.log(nick)
let peticion = process.argv.shift()
console.log(peticion)
req.connect(urlback)
req.on('message', (msg)=> {
	console.log('resp:'+msg)
	process.exit(0);
	})
	req.send('Hola')