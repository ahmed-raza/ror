class Tag < ActiveRecord::Base
  attr_accessible :name, :taggable_id, :taggable_type
  belongs_to :taggable, :polymorphic => true
end
