class NotificationTemplateRole < ActiveRecord::Base

  belongs_to :notification_template
  belongs_to :role
  belongs_to :project

  scope :by_role,  -> (role) { where(role: role) }
end
