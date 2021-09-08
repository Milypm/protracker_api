# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_07_145216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dev_tasks", force: :cascade do |t|
    t.text "notes"
    t.integer "time"
    t.bigint "user_id", null: false
    t.bigint "project_task_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_task_id"], name: "index_dev_tasks_on_project_task_id"
    t.index ["user_id"], name: "index_dev_tasks_on_user_id"
  end

  create_table "project_tasks", force: :cascade do |t|
    t.string "task"
    t.string "assigned_to"
    t.bigint "project_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_project_tasks_on_project_id"
    t.index ["user_id"], name: "index_project_tasks_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.datetime "deadline"
    t.string "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "dev_tasks", "project_tasks"
  add_foreign_key "dev_tasks", "users"
  add_foreign_key "project_tasks", "projects"
  add_foreign_key "project_tasks", "users"
  add_foreign_key "projects", "users"
end
