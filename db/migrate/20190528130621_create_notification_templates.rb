class CreateNotificationTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :notification_templates do |t|
      t.string :name
      t.belongs_to :project
    end
  end
end
