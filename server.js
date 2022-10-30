const http = require('http');
const WebSocketServer = require('websocket').server;

const server = http.createServer();
server.listen(8010);

const wsServer = new WebSocketServer({
    httpServer: server
});

const clients = [];

wsServer.on('request', function(request) {
    const connection = request.accept(null, request.origin);
    clients.push(connection);

    connection.on('message', function(message) {
      console.log('Received Message:', message.utf8Data);
      connection.sendUTF('Hi this is WebSocket server!');

      //broadcast the message to all the clients
      clients.forEach(function(client) {
         client.send(message.utf8Data);
      });
    });
    
    connection.on('close', function(reasonCode, description) {
        console.log('Client has disconnected.');
    });
});
