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

ActiveRecord::Schema.define(version: 20170316220161) do

  create_table "abilities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "scope"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "function_user_projects", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "function_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["function_id"], name: "index_function_user_projects_on_function_id"
    t.index ["project_id"], name: "index_function_user_projects_on_project_id"
    t.index ["user_id"], name: "index_function_user_projects_on_user_id"
  end

  create_table "functions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.integer  "size"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "local_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_projects_on_local_id"
  end

  create_table "releases", force: :cascade do |t|
    t.string   "version"
    t.date     "deliver_date"
    t.integer  "project_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["project_id"], name: "index_releases_on_project_id"
  end

  create_table "sprints", force: :cascade do |t|
    t.integer  "project_id"
    t.date     "start_date"
    t.date     "end_date"
    t.date     "planning_start_date"
    t.date     "planning_end_date"
    t.date     "execution_start_date"
    t.date     "execution_end_date"
    t.date     "review_meeting_date"
    t.date     "retrospective_meeting_date"
    t.integer  "release_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["project_id"], name: "index_sprints_on_project_id"
    t.index ["release_id"], name: "index_sprints_on_release_id"
  end

  create_table "task_requirements", force: :cascade do |t|
    t.integer  "task_id"
    t.integer  "ability_id"
    t.integer  "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ability_id"], name: "index_task_requirements_on_ability_id"
    t.index ["task_id"], name: "index_task_requirements_on_task_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.text     "description"
    t.date     "end_date"
    t.integer  "status"
    t.integer  "user_story_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_story_id"], name: "index_tasks_on_user_story_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_themes_on_project_id"
  end

  create_table "user_abilities", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "ability_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ability_id"], name: "index_user_abilities_on_ability_id"
    t.index ["user_id"], name: "index_user_abilities_on_user_id"
  end

  create_table "user_languages", force: :cascade do |t|
    t.integer  "language_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["language_id"], name: "index_user_languages_on_language_id"
    t.index ["user_id"], name: "index_user_languages_on_user_id"
  end

  create_table "user_stories", force: :cascade do |t|
    t.text     "description"
    t.integer  "business_value"
    t.integer  "status"
    t.integer  "story_points"
    t.integer  "theme_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["theme_id"], name: "index_user_stories_on_theme_id"
  end

  create_table "user_story_acceptance_criterions", force: :cascade do |t|
    t.text     "description"
    t.integer  "status"
    t.integer  "user_story_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_story_id"], name: "index_user_story_acceptance_criterions_on_user_story_id"
  end

  create_table "user_tasks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_user_tasks_on_task_id"
    t.index ["user_id"], name: "index_user_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin"
    t.string   "name"
    t.string   "schedule"
    t.integer  "local_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["local_id"], name: "index_users_on_local_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
