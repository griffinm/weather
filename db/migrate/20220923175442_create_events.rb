class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.datetime :event_at
      t.float :indoor_temperature 
      t.float :indoor_humidity
      t.float :temperature
      t.float :feels_like
      t.float :humidity
      t.float :wind_direction
      t.float :wind_direction_ten_minute_average
      t.float :wind_speed
      t.float :wind_speed_ten_minute_average
      t.float :wind_speed_max_daily
      t.float :wind_speed_gust
      t.float :event_rain
      t.float :hourly_rain
      t.float :weekly_rain
      t.float :monthly_rain
      t.float :yearly_rain
      t.float :uv_index
      t.float :barometer
      t.datetime :last_rain_at

      t.timestamps
    end
  end
end
