class Subscription < ActiveRecord::Base

  belongs_to :project_user
  belongs_to :notification_template_role

end
