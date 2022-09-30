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

ActiveRecord::Schema[7.0].define(version: 2022_09_30_172352) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.datetime "event_at"
    t.float "indoor_temperature"
    t.float "indoor_humidity"
    t.float "temperature"
    t.float "feels_like"
    t.float "humidity"
    t.float "wind_direction"
    t.float "wind_direction_ten_minute_average"
    t.float "wind_speed"
    t.float "wind_speed_ten_minute_average"
    t.float "wind_speed_max_daily"
    t.float "wind_speed_gust"
    t.float "event_rain"
    t.float "hourly_rain"
    t.float "weekly_rain"
    t.float "monthly_rain"
    t.float "yearly_rain"
    t.float "uv_index"
    t.float "barometer"
    t.datetime "last_rain_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "solar_radiation"
  end

end
