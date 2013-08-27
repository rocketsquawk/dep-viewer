class Build < ActiveRecord::Base
  belongs_to :project
  has_many :dependencies
  has_many :dependants, :class_name => 'Dependency', :foreign_key => 'dependency_build_id'
  attr_accessible :project_id, :build_number
end
