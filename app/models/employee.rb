class Employee < ActiveRecord::Base
  attr_accessible :name

  has_one :office
end
