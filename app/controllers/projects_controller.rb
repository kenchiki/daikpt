class ProjectsController < ApplicationController
  def index
    @projects = current_user.projects.order(id: :desc)
  end
  def new
    @project = current_user.projects.build
  end

  def create
    @project = current_user.projects.build(project_params)
   if @project.save
     redirect_to root_path
   else
     render :new
   end
  end

  private
  def project_params
    params.require(:project).permit(:name)
  end
end
