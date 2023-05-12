require "json"

class CurrenciesController < ApplicationController
  def index
    response = Currency.all.find_by(entity: params["entity"].upcase)
    data = JSON.parse(response)
    render json: data
  end
end
