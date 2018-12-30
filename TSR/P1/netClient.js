const net = require('net');

const client = net.connect({ port: 8000 },
    function (params) { //listener de conectado
        console.log('Client connected');
        client.write('World!\n');
    });

client.on('data',
    function (data) {
        console.log(data.toString());
        client.end(); //no se escribe mas en el stream
    });
client.on('end',
    function () {
        console.log('Client disconnected');
    });