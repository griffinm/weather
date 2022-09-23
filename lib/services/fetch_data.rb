module Services
  class FetchData
    def self.fetch
      api_key = ENV.fetch("AW_API_KEY")
      application_key = ENV.fetch("AW_APPLICATION_KEY")
      url = "https://rt.ambientweather.net/v1/devices?applicationKey=#{application_key}&apiKey=#{api_key}"

      response = RestClient.get(url)
      body = JSON.parse(response.body)[0]["lastData"]

      Event.create(
        event_at: body["date"],
        indoor_temperature: body["tempinf"],
        indoor_humidity: body["humidityin"],
        temperature: body["tempf"],
        feels_like: body["feelsLike"],
        humidity: body["humidity"],
        wind_direction: body["winddir"],
        wind_direction_ten_minute_average: body["winddir_avg10m"],
        wind_speed: body["windspeedmph"],
        wind_speed_ten_minute_average: body["windspdmph_avg10m"],
        wind_speed_max_daily: body["maxdailygust"],
        wind_speed_gust: body["windgustmph"],
        event_rain: body["eventrainin"],
        hourly_rain: body["hourlyrainin"],
        weekly_rain: body["dailyrainin"],
        monthly_rain: body["monthlyrainin"],
        yearly_rain: body["yearlyrainin"],
        uv_index: body["uv"],
        last_rain_at: body["lastRain"],
        barometer: body["baromrelin"],
      )
    end
  end  
end
