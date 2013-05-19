
window.Alphadeville =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  initialize: -> 
    window.router = new Alphadeville.Routers.Home()
    Backbone.history.start()

Backbone.View::close = ->
  @remove()
  @unbind()

$ -> 
  Alphadeville.initialize()

  $('.glow-me').addGlow
    radius: 100
    duration: 500
  