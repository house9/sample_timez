require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    sign_in User.first
    get :index
    assert_response :success
  end

end
