class Article < ActiveRecord::Base
  attr_accessible :content, :name, :title

  validates :name, :title, :presence => true
  validates :title, :uniqueness => true, :length => { :minimum => 5 }
  has_many :comments
end
