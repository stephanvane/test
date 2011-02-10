require 'spec_helper'

describe Boat do
  it "has relations relations" do
    should belong_to :boat_company
    should have_and_belong_to_many :similar_boats
    should have_attached_file :banner
  end
  
  it "validates" do
    should validate_attachment_presence(:banner)
    should validate_presence_of(:name)
    should validate_presence_of(:boat_type)
    should validate_presence_of(:description)
    
    should validate_numericality_of(:price1)
    should validate_numericality_of(:price2)
    should validate_numericality_of(:price3)
    should validate_numericality_of(:max_persons)
    should validate_numericality_of(:max_persons_buffet)
    should validate_numericality_of(:max_persons_dinner)
    should validate_numericality_of(:min_hours)
  end
end
