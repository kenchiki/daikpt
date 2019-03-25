class KeepThingsController < ApplicationController
  def index
    @keep_things = User.keep_things.where(id: current_user.id)
  end
end
