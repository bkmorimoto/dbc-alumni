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

  def add_member
    project = Project.find(params[:id])
    if current_user
      project.members << current_user
      project.save
    end
    redirect_to root_path
  end

  def project_params
    params.require(:project).permit(:name, :description, :lead_id)
  end

end
