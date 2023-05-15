require "json"

class CurrenciesController < ApplicationController
  def index
    @currencies = Currency.all
    render :index
  end

  def show
    currency = Currency.find_by(entity: params[:entity])

    # if currency
    #   # currency.alphabetic_code
    #   shortcode = "EUR"
    #   # response = HTTP.get("https://api.currencyapi.com/v3/latest?apikey=#{ENV["CURRENCY_API_KEY"]}&currencies=#{shortcode}")
    #   data = JSON.parse(response)
    #   currency[:conversion] = data
    # end
    render json: currency
  end
end
