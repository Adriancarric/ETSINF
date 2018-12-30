var zmq = require('zmq');
var publisher = zmq.socket('pub');
var port = parseInt(process.argv[2]);
let count = parseInt(process.argv[3]);
let types = process.argv.splice(4);

let counter = 1;
let primero = types[0];
let repeticiones = 0;

publisher.bind('tcp://*:' + port, function (err) {
    if (err) console.log('No se pudo conectar');
    else console.log('Escuchando en ', port, '...');
});

var intervalo = setInterval(emitir,1000);
function emitir(){
    let m = types[0];
    if(primero == m){repeticiones++;}
    console.log('Enviando '+ m+ ' ' +repeticiones);
    
    publisher.send(m);
    types.shift();
    types.push(m);
    
    counter++;
 
    console.log(counter);

    if(counter==5){
        console.log('Parada!');
        parada();
    }
}


function parada(){
    clearInterval(intervalo);
}
