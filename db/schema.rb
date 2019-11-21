# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_21_161851) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favourite_jobs", force: :cascade do |t|
    t.string "title"
    t.string "salary"
    t.string "description"
    t.string "functions"
    t.string "benefits"
    t.boolean "remote"
    t.string "city"
    t.string "country"
    t.string "seniority"
    t.string "logo_url"
    t.string "modality"
    t.string "company_name"
    t.string "company_description"
    t.string "job_id"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_favourite_jobs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "favourite_jobs", "users"
end
