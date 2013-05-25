Alphadeville.Views.Home = Backbone.View.extend
  template: JST['app/templates/home']

  initialize: ->     
    @project_groups = new Alphadeville.Collections.ProjectGroups    
    @project_groups.on 'reset', @showProjectGroups, @    
        

  loadAddThisLinks: ->
    addthis.buttons_in $("#about .share-zone"), 
        url: "http://alphadeville.com" 
        title: "Martini clásico: 5,5 cl Ginebra o vodka para el Vodka Martini. 1,5 cl Vermú seco [1/5]"

    addthis.buttons_in $("#services .share-zone"), 
        url: "http://alphadeville.com" 
        title: "Martini clásico: Los ingredientes se añaden en un vaso de mezclar con cubitos de hielo, y deben removerse bien [2/5]"

    addthis.buttons_in $("#showcase .share-zone"), 
        url: "http://alphadeville.com" 
        title: "Martini clásico: Se sirve sin hielo, en una copa de cóctel enfriada [3/5]"

    addthis.buttons_in $("#our-team .share-zone"), 
        url: "http://alphadeville.com" 
        title: "Martini clásico: Se adorna con una aceituna [4/5]"

    addthis.buttons_in $("#contact-us .share-zone"), 
        url: "http://alphadeville.com" 
        title: "Martini clásico: Y muy importante: agitar más no revolver el Martini [5/5]"     

  showProjectGroup: (project_group) ->
    project_group_view = new Alphadeville.Views.ProjectGroup model: project_group
    this.$('#project-group-list').append project_group_view.render().el    

  showProjectGroups: ->    
    @showProjectGroup(project_group) for project_group in @project_groups.models       

  render: ->    
    this.$el.html @template()     
    @project_groups.fetch
      reset: true
    @
