const net = require('net');

const server = net.createServer(
    function (c) {//listener de conexion
        console.log('Server: client connected');
        c.on('end',
            function () {
                console.log('Server: client disconnected');
            });
        c.on('data',
            function (data) {
                c.write('Hello \r\n' + data.toString());
                c.end();
            });
    });
server.listen(8000,
    function () {
        console.log('server bound');
    });