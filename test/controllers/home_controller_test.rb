require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get root_url
    assert_response :success
  end

end
