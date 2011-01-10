require 'spec_helper'

describe BoatsController do
  describe "GET index" do
    it "should be successful" do
      get :index
      response.should be_success
      should assign_to :boats
    end
  end
end
