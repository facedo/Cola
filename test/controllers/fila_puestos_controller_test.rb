require 'test_helper'

class FilaPuestosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fila_puesto = fila_puestos(:one)
  end

  test "should get index" do
    get fila_puestos_url
    assert_response :success
  end

  test "should get new" do
    get new_fila_puesto_url
    assert_response :success
  end

  test "should create fila_puesto" do
    assert_difference('FilaPuesto.count') do
      post fila_puestos_url, params: { fila_puesto: { avisos: @fila_puesto.avisos, documento: @fila_puesto.documento, estado: @fila_puesto.estado, fecha: @fila_puesto.fecha, fila_id: @fila_puesto.fila_id, hora: @fila_puesto.hora, hora_estado: @fila_puesto.hora_estado, numero: @fila_puesto.numero, puesto_id: @fila_puesto.puesto_id } }
    end

    assert_redirected_to fila_puesto_url(FilaPuesto.last)
  end

  test "should show fila_puesto" do
    get fila_puesto_url(@fila_puesto)
    assert_response :success
  end

  test "should get edit" do
    get edit_fila_puesto_url(@fila_puesto)
    assert_response :success
  end

  test "should update fila_puesto" do
    patch fila_puesto_url(@fila_puesto), params: { fila_puesto: { avisos: @fila_puesto.avisos, documento: @fila_puesto.documento, estado: @fila_puesto.estado, fecha: @fila_puesto.fecha, fila_id: @fila_puesto.fila_id, hora: @fila_puesto.hora, hora_estado: @fila_puesto.hora_estado, numero: @fila_puesto.numero, puesto_id: @fila_puesto.puesto_id } }
    assert_redirected_to fila_puesto_url(@fila_puesto)
  end

  test "should destroy fila_puesto" do
    assert_difference('FilaPuesto.count', -1) do
      delete fila_puesto_url(@fila_puesto)
    end

    assert_redirected_to fila_puestos_url
  end
end
