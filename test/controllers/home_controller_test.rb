require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get Home" do
    get :Home
    assert_response :success

    assert_select 'title', 'Esport Tracker'
  end

  test "should get contact" do
		get :contact

		assert_response :success

		assert_select 'h3', 'Contact Us'
	end

	test "should post request contact no email" do
		post :request_contact

		assert_response :redirect
		assert_not_empty flash[:alert]
		assert_nil flash[:notice]
	end

	test "should post with info" do
		post :request_contact, email: "alex@alex.com", messagege: "Hello"

		assert_response :redirect
		assert_not_empty flash[:notice]
		assert_nil flash[:alert]
	end

end
