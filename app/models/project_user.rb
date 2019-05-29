class ProjectUser < ActiveRecord::Base
  belongs_to :project
  belongs_to :role
  belongs_to :user

  validates :project_id, uniqueness: { scope: :user_id }

  # before_destroy :destroy_others_associations

end
