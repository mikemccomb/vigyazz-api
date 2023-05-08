require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { first_name: "Test", last_name: "Testerson", email: "test@example.com", password: "password", password_confirmation: "password", home_currency: "USD" }
      assert_response 201
    end
  end
end
