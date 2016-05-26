class Part < ActiveRecord::Base
  attr_accessible :part_number
  has_and_belongs_to_many :assemblies
end
