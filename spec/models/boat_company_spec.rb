require 'spec_helper'

describe BoatCompany do
  it "validates" do
    should validate_presence_of :name
    should validate_presence_of :secret
  end
end
