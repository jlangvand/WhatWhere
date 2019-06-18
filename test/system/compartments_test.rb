require "application_system_test_case"

class CompartmentsTest < ApplicationSystemTestCase
  setup do
    @compartment = compartments(:one)
  end

  test "visiting the index" do
    visit compartments_url
    assert_selector "h1", text: "Compartments"
  end

  test "creating a Compartment" do
    visit compartments_url
    click_on "New Compartment"

    fill_in "Comment", with: @compartment.comment
    fill_in "Name", with: @compartment.name
    fill_in "Number", with: @compartment.number
    fill_in "Shelf", with: @compartment.shelf
    click_on "Create Compartment"

    assert_text "Compartment was successfully created"
    click_on "Back"
  end

  test "updating a Compartment" do
    visit compartments_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @compartment.comment
    fill_in "Name", with: @compartment.name
    fill_in "Number", with: @compartment.number
    fill_in "Shelf", with: @compartment.shelf
    click_on "Update Compartment"

    assert_text "Compartment was successfully updated"
    click_on "Back"
  end

  test "destroying a Compartment" do
    visit compartments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Compartment was successfully destroyed"
  end
end
