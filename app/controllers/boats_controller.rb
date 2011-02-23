class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end
  
  def show
    @boat = Boat.find_first_by_url(params[:url])
    @request = Request.new
  end
  
  def edit
    @boat = Boat.find(params[:id])
    authorize! :edit, @boat
  end
  
  def update
    @boat = Boat.find(params[:id])
    if @boat.update_attributes(params[:boat])
      redirect_to boat_path(@boat.url)
    else
      render :action => :edit
    end
  end
  
  def request_form
    @request = Request.new
    @request.requested = Boat.find_by_url(params[:url]).first
  end
end