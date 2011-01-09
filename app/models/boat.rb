class Boat < ActiveRecord::Base
  # Relations
  has_and_belongs_to_many :similar_boats, 
    :class_name => "Boat", 
    :association_foreign_key => "similar_boat_id",
    :join_table => "similar_boats"
  belongs_to :boat_company
  
  # Translations
  translates :boat_type, :url, :description
end