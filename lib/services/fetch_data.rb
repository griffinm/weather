module Services
  class FetchData
    def self.fetch
      api_key = ENV.fetch("AW_API_KEY")
      application_key = ENV.fetch("AW_APPLICATION_KEY")
      url = "https://rt.ambientweather.net/v1/devices?applicationKey=#{application_key}&apiKey=#{api_key}"

      response = RestClient.get(url)
      body = JSON.parse(response.body)[0]["lastData"]

      Event.create(
        aubrey_humidity: body["humidity3"],
        aubrey_temp: body["temp3f"],
        barometer: body["baromrelin"],
        chloe_humidity: body["humidity2"],
        chloe_temp: body["temp2f"],
        event_at: body["date"],
        event_rain: body["eventrainin"],
        feels_like: body["feelsLike"],
        griffin_office_humidity: body["humidityin"],
        griffin_office_temp: body["tempinf"],
        hourly_rain: body["hourlyrainin"],
        humidity: body["humidity"],
        last_rain_at: body["lastRain"],
        mallory_office_humidity: body["humidity5"],
        mallory_office_temp: body["temp5f"],
        master_humidity: body["humidity1"],
        master_temp: body["temp1f"],
        monthly_rain: body["monthlyrainin"],
        solar_radiation: body["solarradiation"],
        temperature: body["tempf"],
        uv_index: body["uv"],
        weekly_rain: body["dailyrainin"],
        wind_direction: body["winddir"],
        wind_direction_ten_minute_average: body["winddir_avg10m"],
        wind_speed: body["windspeedmph"],
        wind_speed_gust: body["windgustmph"],
        wind_speed_max_daily: body["maxdailygust"],
        wind_speed_ten_minute_average: body["windspdmph_avg10m"],
        yearly_rain: body["yearlyrainin"],
      )
    end
  end  
end
