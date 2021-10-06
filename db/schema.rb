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

ActiveRecord::Schema.define(version: 20210928181700) do

  create_table "contacts", force: :cascade do |t|
    t.string "telephone"
    t.string "cell_phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "person_id"
    t.index ["person_id"], name: "index_contacts_on_person_id"
  end

  create_table "job_roles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "description"
    t.string "registration"
    t.date "birth_date"
    t.string "birth_county"
    t.string "marital_status"
    t.string "sex"
    t.integer "workspace_id"
    t.integer "job_role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "birth_state"
    t.index ["job_role_id"], name: "index_people_on_job_role_id"
    t.index ["workspace_id"], name: "index_people_on_workspace_id"
  end

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workspaces", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
