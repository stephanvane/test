class RequestsController < ApplicationController
  def new
    @request = Request.new
    @request.requested = Boat.find_by_url(params[:url]).first
  end
end
