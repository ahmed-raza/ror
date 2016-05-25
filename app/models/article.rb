class Article < ActiveRecord::Base
  attr_accessible :content, :name, :title

  validates :name, :title, :presence => true
  validates :title, :uniqueness => true, :length => { :minimum => 5 }
  has_many :comments

  scope :aurther_name,lambda { |name| where(:name => name) }
  scope :last_week, lambda { |time| where("created_at > ?", time - 7.days ) }
end
