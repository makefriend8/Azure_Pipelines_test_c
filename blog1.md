I have two ideas.I don't know which idea is better, it can be discussed
# Design Philosophy 1
1: Let all services follow the stomp specification over webscoket.
2：write a java plugin.( maybe it can be called apm-spring-stomp-over-websocket-plugin)
3：write a c++ plugin.
4：write a js plugin.
(stomp has the optional field like http)

#Design Philosophy 2
Because websocket has no optional fields, it cannot follow the specification SkyWalking Cross Process Propagation Headers Protocol. However websocket has extended field which named Sec-WebSocket-Extensions in [rfc6455](https://tools.ietf.org/html/rfc6455). I want to use this feature to enable websocket services to be tracked by skywalking and change skywalking as little as possible.
Let's discuss this scenario.
![](leanote://file/getImage?fileId=60911b47e651322152000009)

## step:1 
Client send http request with "Sec-WebSocket-Extensions:skywalking-extend-rule".(like [rfc7692](https://tools.ietf.org/html/rfc7692 ))
This indicates that the client has been modified by the plugin, if there is no such field. It indicates that the client has not been modified by the plugin.
## step:2
Server send http response with "Sec-WebSocket-Extensions:skywalking-extend-rule".
If one of the server or client has not been modified by the plugin, the server will not return this field, and the two sides will communicate in the original way.
## step:3 
Both sides reach an agreement to establish websocket connection.The client sends the first request. The plugin modifies the sent request according to the skywalking-extend-rule protocol.
## step:4,5  
Server calls other necessary services.
## step:6 
The server sends the request. The plugin modifies the sent request according to the skywalking-extend-rule protocol.
## step:7 
The client sends the request. The plugin modifies the sent request according to the skywalking-extend-rule protocol.
## step:8,9 
Server calls other necessary services.
## step:10 
The server sends the request. The plugin modifies the sent request according to the
## step:11 
close connection.



