class Auther < ActiveRecord::Base
  attr_accessible :auther, :bio
  has_many :books
end
