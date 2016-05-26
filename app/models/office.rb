class Office < ActiveRecord::Base
  attr_accessible :employee_id, :location

  belongs_to :employees
end
