class Project < ActiveRecord::Base
  has_many :builds
  attr_accessible :description, :name
end
