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
    @