require "json"

class CurrenciesController < ApplicationController
  def show
    currency = Currency.find_by(entity: params[:entity])
    render json: currency
  end
end
