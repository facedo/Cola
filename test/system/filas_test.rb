require "application_system_test_case"

class FilasTest < ApplicationSystemTestCase
  setup do
    @fila = filas(:one)
  end

  test "visiting the index" do
    visit filas_url
    assert_selector "h1", text: "Filas"
  end

  test "creating a Fila" do
    visit filas_url
    click_on "New Fila"

    fill_in "Fe Ult Num", with: @fila.fe_ult_num
    fill_in "Max Avisos", with: @fila.max_avisos
    fill_in "Nombre", with: @fila.nombre
    fill_in "Numero", with: @fila.numero
    fill_in "Siglas", with: @fila.siglas
    fill_in "Ult Num", with: @fila.ult_num
    click_on "Create Fila"

    assert_text "Fila was successfully created"
    click_on "Back"
  end

  test "updating a Fila" do
    visit filas_url
    click_on "Edit", match: :first

    fill_in "Fe Ult Num", with: @fila.fe_ult_num
    fill_in "Max Avisos", with: @fila.max_avisos
    fill_in "Nombre", with: @fila.nombre
    fill_in "Numero", with: @fila.numero
    fill_in "Siglas", with: @fila.siglas
    fill_in "Ult Num", with: @fila.ult_num
    click_on "Update Fila"

    assert_text "Fila was successfully updated"
    click_on "Back"
  end

  test "destroying a Fila" do
    visit filas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fila was successfully destroyed"
  end
end
