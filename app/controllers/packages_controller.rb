class PackagesController < ApplicationController
  def index
    @packages = Package.all
  end
  
  def new
    @package = Package.new
  end
  
  def create
    @package = Package.new(params[:package])
    
    if @package.save
      redirect_to packages_path
    else
      render :new
    end
  end
  
  def show
    @package = Package.find_first_by_name(params[:name])
  end
  
  def edit
    @package = Package.find_first_by_name(params[:name])
  end
  
  def update
    @package = Package.find(params[:id])
    if @package.update_attributes(params[:package])
      redirect_to package_path(@package.name)
    else
      render :action => :edit
    end
  end
end
