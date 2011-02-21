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
  mount_uploader :file, PhotoUploader
  
  def file=(val)
    if !val.is_a?(String) && valid?
      file_will_change!
      super
    end
  end
end
