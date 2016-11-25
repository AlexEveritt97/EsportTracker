require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get :Home
    assert_response :success
  end

end
