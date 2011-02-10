# == Schema Information
# Schema version: 20110208001433
#
# Table name: packages
#
#  id             :integer         not null, primary key
#  min_persons    :integer
#  max_persons    :integer
#  duration       :float
#  price          :decimal(, )
#  boarding_area  :string(255)
#  active         :boolean         default(TRUE)
#  discount_price :decimal(, )
#  order          :integer         default(50)
#  created_at     :datetime
#  updated_at     :datetime
#

class Package < ActiveRecord::Base
  translates :name, :description, :url
  validates_presence_of :name
  validates_numericality_of :min_persons, 
      :max_persons, 
      :duration,
      :price
  validates_numericality_of :discount_price, :allow_nil => true
  validates_attachment_presence :banner
  
  # relations
  has_and_belongs_to_many :boats
  has_many :photos, :as => :item, :dependent => :destroy
  has_many :requests, :as => :requested
  accepts_nested_attributes_for :photos
  has_attached_file :banner, :styles => { :normal => '561x181#', 
                                          :thumbnail => '235x81#' }
end