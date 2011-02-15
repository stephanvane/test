class AddCarrierwave < ActiveRecord::Migration
  def self.up
    add_column :boats, :banner, :string
    add_column :packages, :banner, :string
    add_column :photos, :file, :string
  end

  def self.down
    remove_column :boats, :banner
    remove_column :packages, :banner
    remove_column :photos, :file
  end
end
