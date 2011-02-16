require 'spec_helper'

describe Package do
  it "must validate" do
    should validate_presence_of :name
    should validate_numericality_of :min_persons
    should validate_numericality_of :max_persons
    should validate_numericality_of :duration
    should validate_numericality_of :price
    should validate_numericality_of :discount_price
    should allow_value(nil).for(:discount_price)
  end
  
  it 'has relations' do
    should have_and_belong_to_many :boats
    should have_many :photos
    should have_many :requests
  end
end