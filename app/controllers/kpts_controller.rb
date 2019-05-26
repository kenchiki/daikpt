class KptsController < ApplicationController
  before_action :set_project

  def index
    @kpts = @project.kpts.order(id: :desc)
  end

  def new
    @last_kpt = @project.last_kpt
    @kpt = @project.kpts.build
    @kpt.build_relation_things
  end

  def create
    @kpt = @project.kpts.build(kpt_params)
    if @kpt.save
      redirect_to project_kpts_path(@project)
    else
      render :new
    end
  end

  private

  def kpt_params
    params.require(:kpt).permit(
      :target_on,
      :description,
      keep_things_attributes: [:id, :_destroy, :content],
      problem_things_attributes: [:id, :_destroy, :content, try_things_attributes: [:id, :_destroy, :content]]
    )
  end

  def set_project
    @project = current_user.projects.find(params[:project_id])
  end
end
