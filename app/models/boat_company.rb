# == Schema Information
# Schema version: 20110109203626
#
# Table name: boat_companies
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  phone      :string(255)
#  address    :text
#  secret     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class BoatCompany < ActiveRecord::Base
  validates_presence_of :name, :email, :secret
end
