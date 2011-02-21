# == Schema Information
# Schema version: 20110214224017
#
# Table name: boats
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  max_persons        :integer
#  max_persons_buffet :integer
#  max_persons_dinner :integer
#  min_hours          :integer
#  frontpage          :boolean
#  active             :boolean
#  price1             :integer
#  price2             :integer
#  price3             :integer
#  boarding_area      :string(255)
#  boat_company_id    :integer
#  hostess            :boolean
#  toilet             :boolean
#  bar                :boolean
#  music              :boolean
#  heating            :boolean
#  environment        :boolean
#  power              :boolean
#  windows            :boolean
#  wheelchair         :boolean
#  balcony            :boolean
#  created_at         :datetime
#  updated_at         :datetime
#  banner             :string(255)
#

class Boat < ActiveRecord::Base
  # Relations
  has_and_belongs_to_many :similar_boats, 
    :class_name => "Boat", 
    :association_foreign_key => "similar_boat_id",
    :join_table => "similar_boats"
  belongs_to :boat_company
  has_many :photos, :as => :item, :dependent => :destroy
  has_many :requests, :as => :requested
  accepts_nested_attributes_for :photos, :allow_destroy => true
  mount_uploader :banner, BannerUploader
  
  # Translations
  translates :boat_type, :url, :description
  globalize_accessors :locales => [:en, :nl, :fr]
  
  # Validations
  validates_presence_of :name, :boat_type, :description
  validates_numericality_of :price1, :price2, :price3
  validates_numericality_of :max_persons, :max_persons_buffet, :max_persons_dinner
  validates_numericality_of :min_hours
  validates_format_of :url, :with => /^[\w\-]+$/
  
  def display_name
    "#{self.boat_type.capitalize} #{self.name.capitalize}"
  end
end
