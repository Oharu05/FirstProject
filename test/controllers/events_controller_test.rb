require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get detail" do
    get events_detail_url
    assert_response :success
  end

end
