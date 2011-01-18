class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.references :requested, :polymorphic => true
      t.date :date
      t.time :start
      t.time :end
      t.integer :persons
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :message
      t.boolean :available
      t.string :random
      t.boolean :feedback_mail_send
      t.string :locale
      t.integer :price
      t.boolean :client_rented
      t.boolean :boat_company_rented
      t.boolean :similar_boats
      t.boolean :reminder_send
      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end
