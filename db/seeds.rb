# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create(name: 'Foo', description: 'The classic foo project, which will have a dependency on Bar.')
Project.create(name: 'Bar', description: 'The classic bar project, which will be a dependant of Foo.')

# A series of Foo builds that depend on Bar-2.0.0.1
# This is a typical dev cycle
Build.create(project_id: 2, build_number: '2.0.0.1') #1
Build.create(project_id: 1, build_number: '1.0.0.1') #2
Build.create(project_id: 1, build_number: '1.0.0.2') #3
Build.create(project_id: 1, build_number: '1.0.0.3') #4
Dependency.create(build_id: 2, dependency_build_id: 1)
Dependency.create(build_id: 3, dependency_build_id: 1)
Dependency.create(build_id: 4, dependency_build_id: 1)

# A single Foo build that depends on Bar-2.1.0.1
Build.create(project_id: 2, build_number: '2.1.0.1') #5
Build.create(project_id: 1, build_number: '1.1.0.1') #6
Dependency.create(build_id: 6, dependency_build_id: 5)
