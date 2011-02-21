# == Schema Information
# Schema version: 20110214224017
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
#  banner         :string(255)
#

class Package < ActiveRecord::Base
  # i18n
  translates :name, :description, :url
  globalize_accessors :locales => I18n.available_locales
  
  validates_presence_of :name, :description, :url
  validates_numericality_of :min_persons, 
      :max_persons, 
      :duration,
      :price
  validates_numericality_of :discount_price, :allow_nil => true
  
  # relations
  has_and_belongs_to_many :boats
  has_many :photos, :as => :item, :dependent => :destroy
  has_many :requests, :as => :requested
  # accepts_nested_attributes_for :photos
  # has_attached_file :banner, :styles => { :normal => '561x181#', 
  #                                        :thumbnail => '235x81#' }
  mount_uploader :banner, BannerUploader
  
  def to_param
    self.url
  end
end