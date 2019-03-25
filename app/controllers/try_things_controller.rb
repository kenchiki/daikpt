class TryThingsController < ApplicationController
  def index
    @try_things = User.try_things.where(id: current_user.id)
  end
end
