Alphadeville.Routers.Home = Backbone.Router.extend
  routes:
    '': 'showHome'
    '/section/:section': ''
    '*whatever': 'defaultRoute'

  initialize: ->

  showHome: ->
    view = new Alphadeville.Views.Home
    @showView view
    view.loadAddThisLinks()

  goToSection: (section) ->
    console.log section

  defaultRoute: ->
    window.router.navigate '', true

  showView: (view) ->
    @currentView.close() if @currentView
    @currentView = view
    @currentView.render()
    $("#app-wrap").html @currentView.el
