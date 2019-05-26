class TryThingsController < ApplicationController
  def index
    @try_things = current_user.try_things.order(id: :desc)
  end

  def update
    @try_thing = TryThing.find(params[:id])
    @try_thing.create_keep_things_from_try_thing!
    respond_to :js
  end
end
