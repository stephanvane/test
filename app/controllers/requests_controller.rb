class RequestsController < ApplicationController
  def new
    @request = Request.new
    @request.requested = Boat.find_by_url(params[:url]).first
  end
  
  def create
    @request = Request.new(params[:request])
    if @request.save
    else
      render :new
    end
  end
end
