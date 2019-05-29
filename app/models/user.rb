class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  attr_accessor :role_id, :project_id, :location_id

  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :project_users, :dependent => :destroy
  has_many :projects, :through => :project_users
  has_many :roles, :through => :project_users
  has_many :locations, :through => :project_users

  after_invitation_created :create_user_project_and_subscriptions

  private
  def create_user_project_and_subscriptions
    project_user = self.project_users.build(project_id: project_id, role_id: role_id, location_id: location_id)
    project_user.project.notification_template_roles.by_role(project_user.role_id).each do |notification_template_role|
      project_user.subscriptions.build(notification_template_role_id: notification_template_role.id)
    end
    project_user.save!
  end

end
