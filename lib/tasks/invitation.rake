namespace :invitation do
  desc 'Generate Invitation for a project'
  task :generate, [:email] => [:environment] do |_t, args|
    email = args[:email]
    role = Role.all.empty? ? (abort 'You should create at least one Role') : Role.all.sample
    project = Project.all.empty? ? (abort 'You should create at least one Project') : Project.all.sample
    location = Location.all.empty? ? (abort 'You should create at least one Location') : Location.all.sample

    User.invite!(email: email, role_id: role.id, project_id: project.id, location_id: location.id)
  end
end
