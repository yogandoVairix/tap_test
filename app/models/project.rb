class Project < ActiveRecord::Base

  has_many :project_users, :dependent => :destroy
  has_many :users, :through => :project_users
  has_many :roles, :through => :project_users
  has_many :locations, :through => :project_users
  has_many :notification_template_roles, :dependent => :destroy

  validates :name, presence: true
end
