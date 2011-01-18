class Request < ActiveRecord::Base
  belongs_to :requested, :polymorphic => true
end
