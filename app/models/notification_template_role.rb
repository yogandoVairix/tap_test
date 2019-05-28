class NotificationTemplateRole < ActiveRecord::Base
  belongs_to :notification_template
  belongs_to :role
end
