class Project < ActiveRecord::Base
  has_many :project_users, :dependent => :destroy
  has_many :users, :through => :project_users
  has_many :roles, :through => :project_users

  has_many :location_projects, :dependent => :destroy
  has_many :locations, :through => :location_projects

  has_many :notification_templates, :dependent => :destroy

  validates :name, presence: true
end
