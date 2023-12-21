require "test_helper"

class ArtistsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/artists.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Artist.count, data.length
  end
end
