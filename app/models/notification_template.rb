class NotificationTemplate < ActiveRecord::Base
  belongs_to :project

  has_many :notification_template_roles, :dependent => :destroy
  has_many :roles, :through => :notification_template_roles

  validates :name, presence: true
end
