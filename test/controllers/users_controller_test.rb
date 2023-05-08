require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/users.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal User.count, data.length
  end

  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { first_name: "Test", last_name: "Testerson", email: "test@example.com", password: "password", password_confirmation: "password", home_currency: "USD" }
      assert_response 201
    end
  end

  test "show" do
    get "/users/#{User.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "first_name", "last_name", "home_currency"], data.keys
  end
end
