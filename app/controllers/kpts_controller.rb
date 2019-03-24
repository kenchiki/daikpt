class KptsController < ApplicationController
  before_action :set_project

  def new
    @kpt = @project.kpts.build
    @kpt.keep_things.build
  end

  def create
    @kpt = @project.kpts.build(kpt_params)
    if @kpt.save
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def kpt_params
    params.require(:kpt).permit(:target_on, :description, keep_things_attributes: [:id, :_destroy, :content])
  end

  def set_project
    @project = current_user.projects.find(params[:project_id])
  end
end
