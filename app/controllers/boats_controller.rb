class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end
  
  def show
    @boat = Boat.find_first_by_url(params[:url])
  end
end