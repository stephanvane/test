class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    render :layout => '2columns'
  end
end