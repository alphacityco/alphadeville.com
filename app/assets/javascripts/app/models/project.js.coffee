Alphadeville.Models.Project = Backbone.Model.extend {}

Alphadeville.Collections.Projects = Backbone.Collection.extend
  url: '/api/project'
  model: Alphadeville.Models.Project
  