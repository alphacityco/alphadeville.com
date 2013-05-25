Alphadeville.Views.Project = Backbone.View.extend
  template: JST['app/templates/project']

  initialize: (options) ->    
    @nomargin = options['nomargin']

  render: ->    
    this.$el.html @template
      project: 
        name: @model.get('name')
        title: @model.get('title')
        title_link: @model.get('title_link')
        subtitle: @model.get('subtitle')
        img_small: @model.get('img_small')
        zoom_details: @model.get('zoom_details')
        img_large: @model.get('img_large')
        nomargin: @nomargin

    # THEME SPECIFIC CODE
    this.$('.pic a').lightBox
      imageLoading: '/assets/lightbox/loading.gif'
      imageBtnClose: '/assets/lightbox/close.gif'
      imageBtnPrev: '/assets/lightbox/prev.gif'
      imageBtnNext: '/assets/lightbox/next.gif'

    this.$('.roll').css('opacity','0')
    this.$('.roll').hover ->
        $(this).stop().animate({opacity: .7}, 'slow')
    , ->
      $(this).stop().animate({opacity: 0}, 'slow')
    
    if window.PIE
      this.$('.rounded').each ->
        PIE.attach(this)   

    @