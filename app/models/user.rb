class User < ActiveRecord::Base
  has_many :project_users, :dependent => :destroy
  has_many :projects, :through => :project_users
  has_many :roles, :through => :project_users

  has_many :location_users, :dependent => :destroy
  has_many :locations, :through => :location_users
end
