class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end
  
  def show
    @boat = Boat.find_first_by_url(params[:url])
  end
  
  def edit
    @boat = Boat.find(params[:id])
  end
  
  def update
    @boat = Boat.find(params[:id])
    if @boat.update_attributes(params[:boat])
      redirect_to boat_path(@boat.url)
    else
      render :action => :edit
    end
  end
end