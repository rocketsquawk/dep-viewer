class CreateDependencies < ActiveRecord::Migration
  def change
    create_table :dependencies do |t|
      t.references :build
      t.references :dependency_build

      t.timestamps
    end
    add_index :dependencies, :build_id
    add_index :dependencies, :dependency_build_id
  end
end
