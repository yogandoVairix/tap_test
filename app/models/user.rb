class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  attr_accessor :role, :project, :location

  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :project_users, :dependent => :destroy
  has_many :projects, :through => :project_users
  has_many :roles, :through => :project_users

  accepts_nested_attributes_for :roles

  has_many :location_users, :dependent => :destroy
  has_many :locations, :through => :location_users

  after_invitation_created :create_user_project

  def create_user_project
    project_user = ProjectUser.new
    project_user.project_id = self.project
    project_user.role_id = self.role
    project_user.user = self
    project_user.save!
    rescue => err
      puts err.to_s
    create_subscription_notification_template
  end

  def create_subscription_notification_template
    # notification_template = NotificationTemplateRole.find_by(role: self.role)
  end

end
