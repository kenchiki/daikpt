class TryThingsController < ApplicationController
  def index
    @try_things = current_user.try_things.order(id: :desc)
  end
end
