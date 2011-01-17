class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    render :layout => '2columns'
  end
  
  def show
    @boat = Boat.find_first_by_url(params[:url])
    puts "#{@boat.inspect} <--"
    render :layout => '2columns'
  end
end