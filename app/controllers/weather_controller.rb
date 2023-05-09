require "json"

class WeatherController < ApplicationController
  def index
    response = HTTP.get("http://api.weatherapi.com/v1/current.json?key=#{ENV["WEATHER_API_KEY"]}&q=boston")
    data = JSON.parse(response)
    render json: data
  end
end