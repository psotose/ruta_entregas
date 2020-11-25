require 'test_helper'

class MapStopsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get map_stops_show_url
    assert_response :success
  end

end
