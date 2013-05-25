class ProjectGroupController < ApplicationController

  def index 
    @project_groups = ProjectGroup.all
    respond_to do |format|
      format.json { render json: @project_groups }
    end
  end

end
