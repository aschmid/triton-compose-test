

Hapi          = require 'hapi'

opts =
  port    : 8000
  address : '0.0.0.0'

server = new Hapi.Server({
  connections: {
    routes: {
      cors: true
      payload: {
        maxBytes: 1048576*50
      }
    }
  }

})

server.connection opts

server.route(

  {
    method: 'GET'
    path:   '/'
    handler: (request, reply) ->
      reply 'hello... whats up?'
  }
)

server.start ->

  console.log 'server started....', server.info.uri