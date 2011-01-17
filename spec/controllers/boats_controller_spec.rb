require 'spec_helper'

describe BoatsController do
  describe "GET index" do
    it "should be successful" do
      get 'index', :locale => 'en'
      response.should be_success
      should assign_to :boats
    end
  end
  
  describe "GET show" do
    before(:each) do
      @b = Factory(:boat)
    end
    
    it "should be successful" do
      get 'show', :url => @b.url, :locale => 'en'
      response.should be_success
      assigns(:boat).should == @b
    end
  end
end
