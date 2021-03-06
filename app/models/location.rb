class Location < ActiveRecord::Base

  has_many :location_users, :dependent => :destroy
  has_many :users, :through => :location_users
  has_many :location_projects, :dependent => :destroy
  has_many :projects, :through => :location_projects

  validates :address, presence: true
end
