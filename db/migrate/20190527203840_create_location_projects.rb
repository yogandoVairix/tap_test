class CreateLocationProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :location_projects do |t|
      t.belongs_to :location
      t.belongs_to :project
    end
  end
end
