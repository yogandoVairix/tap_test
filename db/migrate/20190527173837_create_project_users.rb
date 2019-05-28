class CreateProjectUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :project_users do |t|
      t.belongs_to :project
      t.belongs_to :user
      t.belongs_to :role
    end
    add_index :project_users, [:project_id, :user_id], unique: true
  end
end
