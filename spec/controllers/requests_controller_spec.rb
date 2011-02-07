require 'spec_helper'

describe RequestsController do
  describe "GET new" do
    it "should be successful" do
      @b = Factory(:boat)
      get 'new', :locale => 'en', :url => @b.url, :format => 'js'
      response.should be_success
    end
  end
  
  describe "POST create" do 
    before :each do
      @b = Factory(:boat)
      @r = Factory(:request)
    end
    
    it "should be successful" do
      post 'create', :url => @b.url, :locale => 'en', :format => 'js'
      response.should be_success
    end
    
    it 'should send mail' do
      post 'create', :request => @r.attributes, :url => @b.url,
                     :locale => 'en', :format => 'js'

      response.should render_template('requests/create')    
      ActionMailer::Base.deliveries.should_not be_empty
    end
  end
end
