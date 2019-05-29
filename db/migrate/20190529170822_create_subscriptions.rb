class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.belongs_to :project_user
      t.belongs_to :notification_template_role
    end
  end
end
