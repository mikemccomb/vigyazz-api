require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    post "/users.json", params: { first_name: "Test", last_name: "Testerson", email: "test@example.com", password: "password", password_confirmation: "password", home_currency: "USD" }
    post "/sessions.json", params: { email: "test@example.com", password: "password" }
    assert_response 201

    data = JSON.parse(response.body)
    assert_equal ["jwt", "email", "user_id"], data.keys
  end
end
