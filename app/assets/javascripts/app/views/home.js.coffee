Alphadeville.Views.Home = Backbone.View.extend
  template: JST['app/templates/home']

  initialize: ->    


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

  render: ->    
    this.$el.html @template()

