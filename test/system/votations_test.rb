require "application_system_test_case"

class VotationsTest < ApplicationSystemTestCase
  setup do
    @votation = votations(:one)
  end

  test "visiting the index" do
    visit votations_url
    assert_selector "h1", text: "Votations"
  end

  test "creating a Votation" do
    visit votations_url
    click_on "New Votation"

    fill_in "Birthday", with: @votation.birthday
    fill_in "Cpf", with: @votation.cpf
    fill_in "Name", with: @votation.name
    fill_in "Registration", with: @votation.registration
    fill_in "Sector", with: @votation.sector
    fill_in "Servidordc", with: @votation.servidordc
    fill_in "Servidorgmf", with: @votation.servidorgmf
    fill_in "Servidorsesec", with: @votation.servidorsesec
    click_on "Create Votation"

    assert_text "Votation was successfully created"
    click_on "Back"
  end

  test "updating a Votation" do
    visit votations_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @votation.birthday
    fill_in "Cpf", with: @votation.cpf
    fill_in "Name", with: @votation.name
    fill_in "Registration", with: @votation.registration
    fill_in "Sector", with: @votation.sector
    fill_in "Servidordc", with: @votation.servidordc
    fill_in "Servidorgmf", with: @votation.servidorgmf
    fill_in "Servidorsesec", with: @votation.servidorsesec
    click_on "Update Votation"

    assert_text "Votation was successfully updated"
    click_on "Back"
  end

  test "destroying a Votation" do
    visit votations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Votation was successfully destroyed"
  end
end
