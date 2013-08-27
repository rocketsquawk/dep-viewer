class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.references :project
      t.string :build_number

      t.timestamps
    end
    add_index :builds, :project_id
  end
end
