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
  
  def index
    #@boat = Boat.select('id').where(:id => params[:id])
   # @requests = @boat.requests
    #@requests = @boat[0].requests
    # @requests = Request.find_all_by_requested_id(params[:id])
    # Request.where(requested_id => params[:id], requested_type => '')
  end
end
