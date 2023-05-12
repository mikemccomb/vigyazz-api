# json.extract! currency, :id, :created_at, :updated_at
# json.url currency_url(currency, format: :json)
json.id currency.id
json.entity currency.entity
json.currency currency.currency
json.alphabetic_code currency.alphabetic_code
