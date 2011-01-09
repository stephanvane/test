class CreateBoatCompanies < ActiveRecord::Migration
  def self.up
    create_table :boat_companies do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text   :address
      t.string :secret
      t.timestamps
    end
  end

  def self.down
    drop_table :boat_companies
  end
end
