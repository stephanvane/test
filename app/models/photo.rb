class Photo < ActiveRecord::Base
  has_attached_file :photo, :styles => {
    :small => "212x142#",
    :large => "500x375>"
  }
end