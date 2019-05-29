# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_29_173237) do

  create_table "locations", force: :cascade do |t|
    t.string "address"
  end

  create_table "notification_template_roles", force: :cascade do |t|
    t.integer "notification_template_id"
    t.integer "role_id"
    t.integer "project_id"
    t.index ["notification_template_id"], name: "index_notification_template_roles_on_notification_template_id"
    t.index ["project_id"], name: "index_notification_template_roles_on_project_id"
    t.index ["role_id"], name: "index_notification_template_roles_on_role_id"
  end

  create_table "notification_templates", force: :cascade do |t|
    t.string "name"
  end

  create_table "project_users", force: :cascade do |t|
    t.integer "project_id"
    t.integer "user_id"
    t.integer "role_id"
    t.integer "location_id"
    t.index ["location_id"], name: "index_project_users_on_location_id"
    t.index ["project_id", "user_id"], name: "index_project_users_on_project_id_and_user_id", unique: true
    t.index ["project_id"], name: "index_project_users_on_project_id"
    t.index ["role_id"], name: "index_project_users_on_role_id"
    t.index ["user_id"], name: "index_project_users_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "project_user_id"
    t.integer "notification_template_role_id"
    t.index ["notification_template_role_id"], name: "index_subscriptions_on_notification_template_role_id"
    t.index ["project_user_id"], name: "index_subscriptions_on_project_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.integer "invited_by_id"
    t.integer "invitations_count", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_users_on_invitations_count"
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_users_on_invited_by_type_and_invited_by_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
