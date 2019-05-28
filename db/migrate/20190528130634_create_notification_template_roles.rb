class CreateNotificationTemplateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :notification_template_roles do |t|
      t.belongs_to :notification_template
      t.belongs_to :role
    end
  end
end
