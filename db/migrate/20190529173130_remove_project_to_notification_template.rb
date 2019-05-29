class RemoveProjectToNotificationTemplate < ActiveRecord::Migration[5.2]
  def change
    remove_column :notification_templates, :project_id
  end
end
