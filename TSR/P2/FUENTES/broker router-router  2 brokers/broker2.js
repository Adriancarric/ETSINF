const zmq = require('zmq')
let cli=[], req=[], workers=[]
let sc = zmq.socket('router') // frontend
let sw = zmq.socket('router') // backend
let portF = process.argv[2]
let portB = process.argv[3]
let contador = 0
sc.bind('tcp://*:'+portF)
sw.bind('tcp://*:'+portB)
sc.on('message',(c,sep,m)=> {
	console.log('peticion recibida')
	if (workers.length==0) { 
		cli.push(c); req.push(m)
		console.log('de ' + 'tenemos ' + m)
	} else {
		sw.send([workers.shift(),'',c,'',m])
	}
})
sw.on('message',(sep3,w,sep,c,sep2,r)=> {
	if (c=='') {	
		workers.push(w);
		console.log('worker añadido')		
	}

	if (cli.length>0) {
		clien = cli.shift()
		requ = req.shift()
		sw.send([w,'', clien,'',requ])
		console.log('mensaje enviado a ' + w + ' de ' + clien + ' req ' + requ)
	} else {
		workers.push(w)
	}
	contador++	
	sc.send([c,'',r, contador])	
})
