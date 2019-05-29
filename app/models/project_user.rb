class ProjectUser < ActiveRecord::Base

  belongs_to :project
  belongs_to :role
  belongs_to :user
  belongs_to :location

  has_many :subscriptions, :dependent => :destroy

  validates :project_id, uniqueness: { scope: :user_id }

end
