ActiveRecord::Schema[7.0].define(version: 2023_05_08_175744) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "home_currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
