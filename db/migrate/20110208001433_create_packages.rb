class CreatePackages < ActiveRecord::Migration
  def self.up
    create_table :packages do |t|
      t.integer :min_persons
      t.integer :max_persons
      t.float   :duration
      t.decimal :price
      t.string  :boarding_area
      t.boolean :active, :default => true
      t.decimal :discount_price
      t.integer :order, :default => 50
      
      #paperclip columns
      t.string :banner_file_name
      t.string :banner_content_type
      t.integer :banner_file_size
      t.datetime :banner_updated_at
      
      t.timestamps
    end

    create_table :boats_packages, :id => false do |t|
      t.integer :boat_id
      t.integer :package_id
    end
    
    Package.create_translation_table! :name => :string, :description => :text, :url => :string
  end

  def self.down
    drop_table :packages
    drop_table :boats_packages
  end
end
