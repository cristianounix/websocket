## Web Socket example

Run standalone websocket server.

$ npm install
$ node server.js

Open another terminal and run:

$ wscat  --connect 127.0.0.1:9898/ws

> Don't forget install wscat globally or you can use the wscat from the project folder, like:

$ ./node_modules/.bin/wscat  --connect ws://127.0.0.1:9898/ws


## Web Socket with Nginx as load balancer

$ docker-compose up

In another terminal run:

$ wscat  --connect localhost:8020/ws


If you make some changes on Dockerfile don't forget to rebuild.

$ docker-compose up --build


