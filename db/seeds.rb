# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

role_1 = Role.create(name: "role 1")
role_2 = Role.create(name: "role 2")
role_3 = Role.create(name: "role 3")

project_1 = Project.create(name: "project 1")
project_2 = Project.create(name: "project 2")

Location.create(address: "location 1")
Location.create(address: "location 2")

notification_template_1 = NotificationTemplate.create(name: "notification template 1")
notification_template_2 = NotificationTemplate.create(name: "notification template 2")

NotificationTemplateRole.create(notification_template_id: notification_template_1.id, role_id: role_1.id, project_id: project_1.id)
NotificationTemplateRole.create(notification_template_id: notification_template_2.id, role_id: role_2.id, project_id: project_2.id)
NotificationTemplateRole.create(notification_template_id: notification_template_2.id, role_id: role_1.id, project_id: project_1.id)
