require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index1" do
    get pages_index1_url
    assert_response :success
  end
end
