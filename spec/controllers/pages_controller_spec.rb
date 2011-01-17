require 'spec_helper'

describe PagesController do
  it 'has married page' do
    get 'married', :locale => 'en'
  end
end
