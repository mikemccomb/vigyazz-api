require "json"

class CurrenciesController < ApplicationController
  def index
    @currencies = Currency.all
    render :index
  end

  def show
    currency = Currency.find_by(entity: params[:entity])
    render json: currency
  end
end
