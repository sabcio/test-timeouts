require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get test_pg_timeout" do
    get :test_pg_timeout
    assert_response :success
  end

  test "should get test_timeout" do
    get :test_timeout
    assert_response :success
  end

end
