class AddProjectToNotifiactionTemplateRole < ActiveRecord::Migration[5.2]
  def change
    add_reference :notification_template_roles, :project, foreign_key: true
  end
end
