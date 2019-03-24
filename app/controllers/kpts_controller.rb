class KptsController < ApplicationController
  before_action :set_project

  def new
    @kpt = @project.kpts.build
  end

  private
  def set_project
    @project = current_user.projects.find(params[:project_id])
  end
end
