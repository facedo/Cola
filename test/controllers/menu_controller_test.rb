require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get puesto" do
    get menu_puesto_url
    assert_response :success
  end

  test "should get monitor" do
    get menu_monitor_url
    assert_response :success
  end

  test "should get registro" do
    get menu_registro_url
    assert_response :success
  end

  test "should get configurar" do
    get menu_configurar_url
    assert_response :success
  end

  test "should get salir" do
    get menu_salir_url
    assert_response :success
  end

end
