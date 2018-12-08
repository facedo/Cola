require "application_system_test_case"

class PuestosTest < ApplicationSystemTestCase
  setup do
    @puesto = puestos(:one)
  end

  test "visiting the index" do
    visit puestos_url
    assert_selector "h1", text: "Puestos"
  end

  test "creating a Puesto" do
    visit puestos_url
    click_on "New Puesto"

    fill_in "Fila", with: @puesto.fila_id
    fill_in "Nombre", with: @puesto.nombre
    fill_in "Rotulo", with: @puesto.rotulo
    click_on "Create Puesto"

    assert_text "Puesto was successfully created"
    click_on "Back"
  end

  test "updating a Puesto" do
    visit puestos_url
    click_on "Edit", match: :first

    fill_in "Fila", with: @puesto.fila_id
    fill_in "Nombre", with: @puesto.nombre
    fill_in "Rotulo", with: @puesto.rotulo
    click_on "Update Puesto"

    assert_text "Puesto was successfully updated"
    click_on "Back"
  end

  test "destroying a Puesto" do
    visit puestos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Puesto was successfully destroyed"
  end
end
