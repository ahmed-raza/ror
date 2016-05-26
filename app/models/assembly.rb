class Assembly < ActiveRecord::Base
  attr_accessible :name, :part_ids
  has_and_belongs_to_many :parts
end
