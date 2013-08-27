class Dependency < ActiveRecord::Base
  belongs_to :build
  belongs_to :dependency_build, :class_name => 'Build'
  attr_accessible :build_id, :dependency_build_id

  def dependency_project_name(dependency_build_id)
  		return Project.find(Build.find(dependency_build_id).project_id).name
  end

  def dependency_build_number(dependency_build_id)
  		return Build.find(dependency_build_id).build_number
  end
end
