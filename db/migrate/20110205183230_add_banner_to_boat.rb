class AddBannerToBoat < ActiveRecord::Migration
  def self.up
    add_column :boats, :banner_file_name,    :string
    add_column :boats, :banner_content_type, :string
    add_column :boats, :banner_file_size,    :integer
    add_column :boats, :banner_updated_at,   :datetime
  end

  def self.down
    remove_column :boats, :banner_file_name
    remove_column :boats, :banner_content_type
    remove_column :boats, :banner_file_size
    remove_column :boats, :banner_updated_at
  end
end
