Alphadeville.Views.ProjectGroup = Backbone.View.extend
  template: JST['app/templates/project_group']

  initialize: ->       
    @projects = new Alphadeville.Collections.Projects
    @projects.on 'reset', @showProjects, @    

  showProject: (project, nomargin) -> 
    project_view = new Alphadeville.Views.Project 
      model: project    
      nomargin: nomargin
    this.$(".projects").append project_view.render().el        

  showProjects: ->    
    for project, i in @projects.models      
      nomargin = if ((i+1)%3) != 0 then '' else 'nomargin'      
      @showProject(project, nomargin)

  render: ->    
    this.$el.html @template
      project_group:
        name: @model.get('name')
    project_group_id = @model.get('id')    
    @projects.fetch
      reset: true
      data: $.param
        project_group_id: project_group_id
    @