class RequestsController < ApplicationController
  def new
    @request = Request.new
    @request.requested = Boat.find_by_url(params[:url]).first
  end
  
  def create
    @request = Request.new(params[:request])
    
    boat = Boat.find_first_by_url(params[:url])
    @request.requested = boat
    
    if @request.save
      RequestMailer.request_to_boat_company(@request).deliver!
    else
      render :new
    end
  end
end
