Alphadeville.Models.ProjectGroup = Backbone.Model.extend {}

Alphadeville.Collections.ProjectGroups = Backbone.Collection.extend 
  url: '/api/project_group'
  model: Alphadeville.Models.ProjectGroup