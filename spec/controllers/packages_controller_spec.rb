require 'spec_helper'

describe PackagesController do
  describe 'get index' do
    it 'should be successful' do
      get 'index', :locale => 'en'
      response.should be_successful
      should assign_to :packages
    end
  end
  
  describe 'get new' do
    it 'should be successful' do
      get 'new', :locale => 'en'
      response.should be_successful
    end
  end
  
  describe 'post create' do
    it 'should redirect after creation' do
      @p = Factory(:package)
      post 'create', :locale => 'en', :package => @p.attributes
      should redirect_to(packages_path)
    end
    
    it 'should render "new" after failed creation' do
      @p = Factory(:package)
      @p.name = ''
      @p.should_not be_valid
      post 'create', :locale => 'en', :package => @p.attributes
      should render_template(:new)
    end
  end
  
  describe 'get show' do
    it 'should be successful'do
      @p = Factory(:package)
      get 'show', :locale => 'en', :name => @p.name
      should respond_with :success
      should assign_to(:package).with(@p)
    end
  end
  
  describe 'get edit' do
    it 'should be successful' do
      @p = Factory(:package)
      get 'edit', :locale => 'en', :name => @p.name
      should respond_with :success
      should assign_to(:package).with(@p)
    end
  end
  
  describe 'update' do
    it 'should redirect after update' do
      @p = Factory(:package)
      post 'update', :locale => 'en', :id => @p.id, :package => @p.attributes
      should redirect_to package_path(@p.name)
    end
    
    it 'should render "edit" after validaton error' do
      @p = Factory(:package)
      @p.name = ''
      post 'update', :locale => 'en', :id => @p.id, :package => @p.attributes
      should render_template(:edit)
    end
  end
end
