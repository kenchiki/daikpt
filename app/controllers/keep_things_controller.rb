class KeepThingsController < ApplicationController
  def index
    @keep_things = current_user.keep_things.order(id: :desc)
  end
end
