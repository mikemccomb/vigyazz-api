class CurrenciesController < ApplicationController
  def index
    @currencies = Currency.all
    render :index
  end
end
