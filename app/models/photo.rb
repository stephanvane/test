# == Schema Information
# Schema version: 20110202122424
#
# Table name: photos
#
#  id                 :integer         not null, primary key
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  item_id            :integer
#  item_type          :string(255)
#

class Photo < ActiveRecord::Base
  has_attached_file :photo, :styles => {
    :small => "212x142#",
    :large => "500x375>"
  }
end
