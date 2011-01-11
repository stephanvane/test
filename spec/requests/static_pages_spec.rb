require 'spec_helper'

describe "StaticPages" do
  it "has a getting-married page" do
    get 'getting-married'
    response.should be_successful
  end
end
