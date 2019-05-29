class Role < ActiveRecord::Base

  has_many :project_users, :dependent => :destroy
  has_many :projects, :through => :project_users
  has_many :users, :through => :project_users
  has_many :notification_template_roles, :dependent => :destroy
  has_many :notification_templates, :through => :notification_template_roles

  validates :name, presence: true
end
