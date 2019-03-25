class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :require_project

  def require_project
    redirect_to new_project_path if current_user.project.nil?
  end
end
