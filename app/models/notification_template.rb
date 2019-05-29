class NotificationTemplate < ActiveRecord::Base

  has_many :notification_template_roles, :dependent => :destroy
  has_many :roles, :through => :notification_template_roles
  has_many :projects, :through => :notification_template_roles

  validates :name, presence: true
end
