# == Schema Information
# Schema version: 20110214224017
#
# Table name: photos
#
#  id        :integer         not null, primary key
#  item_id   :integer
#  item_type :string(255)
#  file      :string(255)
#

class Photo < ActiveRecord::Base
  # has_attached_file :photo, :styles => {
  #   :small => "212x142#",
  #   :large => "500x375>"
  # }
  mount_uploader :file, PhotoUploader
end
