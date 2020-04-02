require "application_system_test_case"

class GrupasTest < ApplicationSystemTestCase
  setup do
    @grupa = grupas(:one)
  end

  test "visiting the index" do
    visit grupas_url
    assert_selector "h1", text: "Grupas"
  end

  test "creating a Grupa" do
    visit grupas_url
    click_on "New Grupa"

    fill_in "Name", with: @grupa.name
    fill_in "Semestr", with: @grupa.semestr
    click_on "Create Grupa"

    assert_text "Grupa was successfully created"
    click_on "Back"
  end

  test "updating a Grupa" do
    visit grupas_url
    click_on "Edit", match: :first

    fill_in "Name", with: @grupa.name
    fill_in "Semestr", with: @grupa.semestr
    click_on "Update Grupa"

    assert_text "Grupa was successfully updated"
    click_on "Back"
  end

  test "destroying a Grupa" do
    visit grupas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grupa was successfully destroyed"
  end
end
