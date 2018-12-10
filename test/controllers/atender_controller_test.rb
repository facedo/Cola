require 'test_helper'

class AtenderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get atender_index_url
    assert_response :success
  end

end
