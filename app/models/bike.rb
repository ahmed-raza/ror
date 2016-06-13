class Bike < ActiveRecord::Base
  attr_accessible :name
  has_many :tags, :as => :taggable
end
