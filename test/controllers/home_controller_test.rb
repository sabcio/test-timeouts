require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get test_pg_timeout" do
    get :test_pg_timeout
    assert_response :success
  end

  test "should get test_timeout" do
    get :test_timeout
    assert_response :success
  end

end
