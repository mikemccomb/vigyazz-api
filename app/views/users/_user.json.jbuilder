# json.extract! user, :id, :created_at, :updated_at
# json.url user_url(user, format: :json)
json.id user.id
json.first_name user.first_name
json.last_name user.last_name
json.home_currency user.home_currency
