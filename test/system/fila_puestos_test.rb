require "application_system_test_case"

class FilaPuestosTest < ApplicationSystemTestCase
  setup do
    @fila_puesto = fila_puestos(:one)
  end

  test "visiting the index" do
    visit fila_puestos_url
    assert_selector "h1", text: "Fila Puestos"
  end

  test "creating a Fila puesto" do
    visit fila_puestos_url
    click_on "New Fila Puesto"

    fill_in "Avisos", with: @fila_puesto.avisos
    fill_in "Documento", with: @fila_puesto.documento
    fill_in "Estado", with: @fila_puesto.estado
    fill_in "Fecha", with: @fila_puesto.fecha
    fill_in "Fila", with: @fila_puesto.fila_id
    fill_in "Hora", with: @fila_puesto.hora
    fill_in "Hora Estado", with: @fila_puesto.hora_estado
    fill_in "Numero", with: @fila_puesto.numero
    fill_in "Puesto", with: @fila_puesto.puesto_id
    click_on "Create Fila puesto"

    assert_text "Fila puesto was successfully created"
    click_on "Back"
  end

  test "updating a Fila puesto" do
    visit fila_puestos_url
    click_on "Edit", match: :first

    fill_in "Avisos", with: @fila_puesto.avisos
    fill_in "Documento", with: @fila_puesto.documento
    fill_in "Estado", with: @fila_puesto.estado
    fill_in "Fecha", with: @fila_puesto.fecha
    fill_in "Fila", with: @fila_puesto.fila_id
    fill_in "Hora", with: @fila_puesto.hora
    fill_in "Hora Estado", with: @fila_puesto.hora_estado
    fill_in "Numero", with: @fila_puesto.numero
    fill_in "Puesto", with: @fila_puesto.puesto_id
    click_on "Update Fila puesto"

    assert_text "Fila puesto was successfully updated"
    click_on "Back"
  end

  test "destroying a Fila puesto" do
    visit fila_puestos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fila puesto was successfully destroyed"
  end
end
