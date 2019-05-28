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

ActiveRecord::Schema.define(version: 2019_05_28_130634) do

  create_table "location_projects", force: :cascade do |t|
    t.integer "location_id"
    t.integer "project_id"
    t.index ["location_id"], name: "index_location_projects_on_location_id"
    t.index ["project_id"], name: "index_location_projects_on_project_id"
  end

  create_table "location_users", force: :cascade do |t|
    t.integer "location_id"
    t.integer "user_id"
    t.index ["location_id"], name: "index_location_users_on_location_id"
    t.index ["user_id"], name: "index_location_users_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address"
  end

  create_table "notification_template_rols", force: :cascade do |t|
    t.integer "notification_template_id"
    t.integer "rol_id"
    t.index ["notification_template_id"], name: "index_notification_template_rols_on_notification_template_id"
    t.index ["rol_id"], name: "index_notification_template_rols_on_rol_id"
  end

  create_table "notification_templates", force: :cascade do |t|
    t.string "name"
    t.integer "project_id"
    t.index ["project_id"], name: "index_notification_templates_on_project_id"
  end

  create_table "project_users", force: :cascade do |t|
    t.integer "project_id"
    t.integer "user_id"
    t.integer "rol_id"
    t.index ["project_id", "user_id"], name: "index_project_users_on_project_id_and_user_id", unique: true
    t.index ["project_id"], name: "index_project_users_on_project_id"
    t.index ["rol_id"], name: "index_project_users_on_rol_id"
    t.index ["user_id"], name: "index_project_users_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
  end

  create_table "rols", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
