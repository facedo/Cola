require 'test_helper'

class SalirControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get salir_index_url
    assert_response :success
  end

end
