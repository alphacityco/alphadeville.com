class ProjectController < ApplicationController

  def index 
    @projects = Project.where("project_group_id = ?", params[:project_group_id])
    respond_to do |format|
      format.json { render json: @projects }
    end
  end

end
