const zmq = require('zmq')
let req = zmq.socket('req')
let id = process.argv[3]
let respuesta = process.argv[4]
let urlBack = process.argv[2]
req.connect(urlBack)
console.log('conectando con el broker')
req.on('message', (w,sep2 ,c,sep,msg)=> {
	console.log('mensaje recibido de ' + w)
	setTimeout(()=> {
		req.send([id,'',c,'',respuesta])
		console.log('enviando respuesta de vuelta al broker')
	}, 1000)
})
req.send([id,'','','',''])
console.log('identificandome')