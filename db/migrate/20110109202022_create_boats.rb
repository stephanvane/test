class CreateBoats < ActiveRecord::Migration
  def self.up
    create_table :boats do |t|
      t.string :name
      t.integer :max_persons
      t.integer :max_persons_buffet
      t.integer :max_persons_dinner
      t.integer :min_hours
      
      t.boolean :frontpage
      t.boolean :active
      t.integer :price1
      t.integer :price2
      t.integer :price3

      t.string :boarding_area
      
      # Relations
      t.belongs_to :boat_company
      
      # Boolean fields
      t.boolean :hostess
      t.boolean :toilet
      t.boolean :bar
      t.boolean :music
      t.boolean :heating
      t.boolean :environment
      t.boolean :power
      t.boolean :windows
      t.boolean :wheelchair
      t.boolean :balcony
      
      t.timestamps
    end
    Boat.create_translation_table! :boat_type => :string, :description => :text, :url => :string
    
    create_table :similar_boats, :id => false do |t|
      t.integer :boat_id
      t.integer :similar_boat_id
    end
  end

  def self.down
    drop_table :boats
  end
end
