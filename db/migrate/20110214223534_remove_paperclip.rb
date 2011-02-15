class RemovePaperclip < ActiveRecord::Migration
  def self.up    
    remove_columns :boats, :banner_file_name, 
                          :banner_updated_at, 
                          :banner_file_size, 
                          :banner_content_type
    remove_columns :packages, :banner_file_name, 
                              :banner_updated_at, 
                              :banner_file_size, 
                              :banner_content_type
    remove_columns :photos, :photo_file_name, 
                            :photo_updated_at, 
                            :photo_file_size, 
                            :photo_content_type
  end

  def self.down
    # nah
  end
end
