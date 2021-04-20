class SearchController < ApplicationController
  def index
    # TODO: only get available bikes
    @bikes = Bike.all
  end
end
