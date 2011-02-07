# == Schema Information
# Schema version: 20110118085537
#
# Table name: requests
#
#  id                  :integer         not null, primary key
#  requested_id        :integer
#  requested_type      :string(255)
#  date                :date
#  start               :time
#  end                 :time
#  persons             :integer
#  first_name          :string(255)
#  last_name           :string(255)
#  email               :string(255)
#  phone               :string(255)
#  message             :text
#  available           :boolean
#  random              :string(255)
#  feedback_mail_send  :boolean
#  locale              :string(255)
#  price               :integer
#  client_rented       :boolean
#  boat_company_rented :boolean
#  similar_boats       :boolean
#  reminder_send       :boolean
#  created_at          :datetime
#  updated_at          :datetime
#

class Request < ActiveRecord::Base
  belongs_to :requested, :polymorphic => true
  
  validates_numericality_of :persons, :only_integer => true
  validates_presence_of :first_name, :last_name, :email, :phone
  validates_date :date
  validates_time :start
  validates_time :end, :after => :start
end
