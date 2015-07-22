class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    project = Project.new(project_params)
    if project.save
      redirect_to root_path
    else
      redirect_to new_project_path
    end
  end

  def project_params
    params.require(:project).permit(:name, :description, :lead_id)
  end

end
