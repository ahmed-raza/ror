class Book < ActiveRecord::Base
  attr_accessible :auther_id, :description, :title
  belongs_to :auther
end
